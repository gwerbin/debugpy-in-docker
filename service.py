# This file is in runtime/service.py

import logging
import quart

logger = logging.getLogger(__name__)
logging.basicConfig(level=logging.INFO)

app = quart.Quart(__name__)

@app.route('/')
async def hello():
    logger.info('Handling request.')
    breakpoint()
    return 'Hello, world!\n'