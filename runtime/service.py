import logging
import quart
logger = logging.getLogger(__name__)
logging.basicConfig(level=logging.INFO)
app = quart.Quart(__name__)


@app.route('/')
async def handle_hello():
    logger.info('Handling request.')
    return 'Hello, world!\n'


@app.route('/bad')
async def handle_bad():
    logger.critical('Bad request . . .')
    raise RuntimeError('Oh no!!!')
