Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
 by mx.groups.io with SMTP id smtpd.web10.9923.1591175192350079336
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jun 2020 02:06:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RLmMhd8q;
 spf=pass (domain: gmail.com, ip: 209.85.217.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f52.google.com with SMTP id u17so946122vsu.7
        for <yocto@lists.yoctoproject.org>; Wed, 03 Jun 2020 02:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NwwnReXS4NcFeqge82qYOSA8VV2GcTV83roDozrDIpA=;
        b=RLmMhd8qKRcDZjub93uZ+jRBUDoZJPQTc0e6kYUjIsvf9SSaJPpNtb9t+wwbtfVSvU
         mUiqiGGsZBu9OK0FHm3qK2k4do5qjp2ycXC2HrWjReTcI/eQiKe2xewvfQW8PtsooZxu
         rydIgIMIJfdnJtfRdrgu7IFUSmyBe3EfMSIE3+P+iDLGuwUcrGw21bLi+nZYYJXlsER/
         1h3+ghQ1nE4GPCqyHSTZ86HVsYjbG1K1Bfg7pmGqqCkR1tTFRYbKqpCoifUQMg2U160/
         Z+2l+b+lv7llUWzUA8+NgiBS3fTCq7n0TbocwUdm2SH3uCyI4rZXFHExUaDK7/i5j0Kx
         JIOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NwwnReXS4NcFeqge82qYOSA8VV2GcTV83roDozrDIpA=;
        b=jSZEj2KbMNoWMS7176le6sqKtOhQ0QaqOAljTjlR/Stf/F1ntiTOeksrdX+9UO8VAX
         k0c4BF+woOnk8Cqx1JpPM80dywc4oaqTYgv8dY/w2cld8UIg9Azc+Vab1TkLN8GwCiKZ
         sBNxeq2wtHqWZ2vofK5lPPaCnSacZttlerMRCTFkb9n+SbTEgSahbZSa1AexCsqedKP+
         NWwJscwcHmdeFs24p8FjY/9nP4KC5qJiLbQwDGgelOdRbhvn5ZBW51VXp4LA1bmSGvBT
         U+yuQs8qxGsm0ue2BKk3H7zstrR0aeLeBJrUKvFOvJOAHjRjbuLp8kuTvRG4O9SUsD3+
         sksQ==
X-Gm-Message-State: AOAM532QUlucr08ZIEl3de4atNr+WKPtQekE+lt8RpzIphRjwNRVeVTf
	IDcQAKNvBPioPWZ5RmO7baBxaBBbzQRAlijbFoI=
X-Google-Smtp-Source: ABdhPJw88eSnR6orOp+xgF2BKSCbnMozrabnmNB5vZGrQHmXBSwDW4YFpOBVaZ0Ml0MchhuH42fiRE7JdtvThSy8VEA=
X-Received: by 2002:a67:2c52:: with SMTP id s79mr21290619vss.23.1591175191429;
 Wed, 03 Jun 2020 02:06:31 -0700 (PDT)
MIME-Version: 1.0
References: <srY9.1591133327694476026.h5dt@lists.yoctoproject.org>
In-Reply-To: <srY9.1591133327694476026.h5dt@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 3 Jun 2020 11:06:19 +0200
Message-ID: <CANNYZj_39Vq-1754skg3Zhvkt+jU1bDwKVDVar0jZovZC4P3WQ@mail.gmail.com>
Subject: Re: [yocto] devtool modify issues with ubuntu 20 and fedora core 32
To: Andrew Geissler <geissonator@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000f8dbd05a72a58a2"

--0000000000000f8dbd05a72a58a2
Content-Type: text/plain; charset="UTF-8"

I'm not sure if this is distro specific. _PYTHON_SYSCONFIGDATA_NAME is set
from python3native.bbclass so that native python can pick up target
configuration, and if the target configuration is not there (it comes with
target python3 build), then there will be a failure like the above. How
does your recipe look like? Do you get the same failure if you try devtool
modify in a plain yocto environment (not the SDK)?

Alex

On Tue, 2 Jun 2020 at 23:28, Andrew Geissler <geissonator@gmail.com> wrote:

> I see meta-poky/conf/distro/poky.conf lists both Ubuntu 20 and FC32 as
> supported but a couple of us have seen issues with running devtool modify
> using these distros.
>
> Anyone else seeing this or know of the issue?
>
> Seems like something with _PYTHON_SYSCONFIGDATA_NAME and sysconfig.py.
>
> A quick hack was to modify sysconfig.py _get_sysconfigdata_name() function
> and change _PYTHON_SYSCONFIGDATA_NAME to _PYTHON_SYSCONFIGDATA_NAME_INVALID
> so the python function will use the alternative
> _sysconfigdata_{abi}_{platform}_{multiarch}'.format
>
> We see this building OpenBMC code using upstream master open-embedded.
>
> Here's the full error:
>
> devtool modify phosphor-state-manager
> NOTE: Starting bitbake server...
> NOTE: Reconnecting to bitbake server...
> NOTE: Retrying server connection (#1)...
> NOTE: Reconnecting to bitbake server...
> NOTE: Previous bitbake instance shutting down?, waiting to retry...
> NOTE: Retrying server connection (#2)...
> Loading cache: 100%
> |##############################################################################################################|
> Time: 0:00:00
> Loaded 3614 entries from dependency cache.
> Parsing recipes: 100%
> |############################################################################################################|
> Time: 0:00:00
> Parsing of 2406 .bb files complete (2404 cached, 2 parsed). 3615 targets,
> 362 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           = "1.46.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "ubuntu-20.04"
> TARGET_SYS           = "arm-openbmc-linux-gnueabi"
> MACHINE              = "witherspoon"
> DISTRO               = "openbmc-witherspoon"
> DISTRO_VERSION       = "0.1.0"
> TUNE_FEATURES        = "arm thumb arm1176jzs"
> TARGET_FPU           = "soft"
> meta
> meta-oe
> meta-networking
> meta-perl
> meta-python
> meta-phosphor
> meta-aspeed
> meta-openpower
> meta-ibm
> workspace            = "master:1ba73b9e60779e905f483b419fc2a801e0d17873"
>
> Initialising tasks: 100%
> |#########################################################################################################|
> Time: 0:00:00
> Sstate summary: Wanted 0 Found 0 Missed 0 Current 10 (0% match, 100%
> complete)
> NOTE: Executing Tasks
> ERROR: Error executing a python function in exec_python_func()
> autogenerated:
>
> The stack trace of python calls that resulted in this exception/failure
> was:
> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>      0001:
>  *** 0002:devtool_post_unpack(d)
>      0003:
> File: '/home/andrewg/Code/openbmc/meta/classes/devtool-source.bbclass',
> lineno: 68, function: devtool_post_unpack
>      0064:}
>      0065:
>      0066:
>      0067:python devtool_post_unpack() {
>  *** 0068:    import oe.recipeutils
>      0069:    import shutil
>      0070:    sys.path.insert(0, os.path.join(d.getVar('COREBASE'),
> 'scripts', 'lib'))
>      0071:    import scriptutils
>      0072:    from devtool import setup_git_repo
> File: '/home/andrewg/Code/openbmc/meta/lib/oe/recipeutils.py', lineno: 21,
> function: <module>
>      0017:import shutil
>      0018:import re
>      0019:import fnmatch
>      0020:import glob
>  *** 0021:import bb.tinfoil
>      0022:
>      0023:from collections import OrderedDict, defaultdict
>      0024:from bb.utils import vercmp_string
>      0025:
> File: '/home/andrewg/Code/openbmc/poky/bitbake/lib/bb/tinfoil.py', lineno:
> 19, function: <module>
>      0015:from collections import OrderedDict, defaultdict
>      0016:from functools import partial
>      0017:
>      0018:import bb.cache
>  *** 0019:import bb.cooker
>      0020:import bb.providers
>      0021:import bb.taskdata
>      0022:import bb.utils
>      0023:import bb.command
> File: '/home/andrewg/Code/openbmc/poky/bitbake/lib/bb/cooker.py', lineno:
> 25, function: <module>
>      0021:import bb, bb.exceptions, bb.command
>      0022:from bb import utils, data, parse, event, cache, providers,
> taskdata, runqueue, build
>      0023:import queue
>      0024:import signal
>  *** 0025:import prserv.serv
>      0026:import pyinotify
>      0027:import json
>      0028:import pickle
>      0029:import codecs
> File: '/home/andrewg/Code/openbmc/poky/bitbake/lib/prserv/serv.py',
> lineno: 7, function: <module>
>      0003:#
>      0004:
>      0005:import os,sys,logging
>      0006:import signal, time
>  *** 0007:from xmlrpc.server import SimpleXMLRPCServer,
> SimpleXMLRPCRequestHandler
>      0008:import threading
>      0009:import queue
>      0010:import socket
>      0011:import io
> File:
> '/opt/poky/3.1/sysroots/x86_64-pokysdk-linux/usr/lib/python3.8/xmlrpc/server.py',
> lineno: 117, function: <module>
>      0113:import socketserver
>      0114:import sys
>      0115:import os
>      0116:import re
>  *** 0117:import pydoc
>      0118:import traceback
>      0119:try:
>      0120:    import fcntl
>      0121:except ImportError:
> File:
> '/opt/poky/3.1/sysroots/x86_64-pokysdk-linux/usr/lib/python3.8/pydoc.py',
> lineno: 366, function: <module>
>      0362:    return module
>      0363:
>      0364:# ---------------------------------------------------- formatter
> base class
>      0365:
>  *** 0366:class Doc:
>      0367:
>      0368:    PYTHONDOCS = os.environ.get("PYTHONDOCS",
>      0369:                                "
> https://docs.python.org/%d.%d/library"
>      0370:                                % sys.version_info[:2])
> File:
> '/opt/poky/3.1/sysroots/x86_64-pokysdk-linux/usr/lib/python3.8/pydoc.py',
> lineno: 396, function: Doc
>      0392:        raise TypeError(message)
>      0393:
>      0394:    docmodule = docclass = docroutine = docother = docproperty =
> docdata = fail
>      0395:
>  *** 0396:    def getdocloc(self, object,
> basedir=sysconfig.get_path('stdlib')):
>      0397:        """Return the location of module docs or None"""
>      0398:
>      0399:        try:
>      0400:            file = inspect.getabsfile(object)
> File:
> '/opt/poky/3.1/sysroots/x86_64-pokysdk-linux/usr/lib/python3.8/sysconfig.py',
> lineno: 514, function: get_path
>      0510:    """Return a path corresponding to the scheme.
>      0511:
>      0512:    ``scheme`` is the install scheme name.
>      0513:    """
>  *** 0514:    return get_paths(scheme, vars, expand)[name]
>      0515:
>      0516:
>      0517:def get_config_vars(*args):
>      0518:    """With no arguments, return a dictionary of all
> configuration
> File:
> '/opt/poky/3.1/sysroots/x86_64-pokysdk-linux/usr/lib/python3.8/sysconfig.py',
> lineno: 504, function: get_paths
>      0500:    ``scheme`` is the install scheme name. If not provided, it
> will
>      0501:    return the default scheme for the current platform.
>      0502:    """
>      0503:    if expand:
>  *** 0504:        return _expand_vars(scheme, vars)
>      0505:    else:
>      0506:        return _INSTALL_SCHEMES[scheme]
>      0507:
>      0508:
> File:
> '/opt/poky/3.1/sysroots/x86_64-pokysdk-linux/usr/lib/python3.8/sysconfig.py',
> lineno: 172, function: _expand_vars
>      0168:def _expand_vars(scheme, vars):
>      0169:    res = {}
>      0170:    if vars is None:
>      0171:        vars = {}
>  *** 0172:    _extend_dict(vars, get_config_vars())
>      0173:
>      0174:    for key, value in _INSTALL_SCHEMES[scheme].items():
>      0175:        if os.name in ('posix', 'nt'):
>      0176:            value = os.path.expanduser(value)
> File:
> '/opt/poky/3.1/sysroots/x86_64-pokysdk-linux/usr/lib/python3.8/sysconfig.py',
> lineno: 552, function: get_config_vars
>      0548:
>      0549:        if os.name == 'nt':
>      0550:            _init_non_posix(_CONFIG_VARS)
>      0551:        if os.name == 'posix':
>  *** 0552:            _init_posix(_CONFIG_VARS)
>      0553:        # For backward compatibility, see issue19555
>      0554:        SO = _CONFIG_VARS.get('EXT_SUFFIX')
>      0555:        if SO is not None:
>      0556:            _CONFIG_VARS['SO'] = SO
> File:
> '/opt/poky/3.1/sysroots/x86_64-pokysdk-linux/usr/lib/python3.8/sysconfig.py',
> lineno: 423, function: _init_posix
>      0419:def _init_posix(vars):
>      0420:    """Initialize the module as appropriate for POSIX systems."""
>      0421:    # _sysconfigdata is generated at build time, see
> _generate_posix_vars()
>      0422:    name = _get_sysconfigdata_name()
>  *** 0423:    _temp = __import__(name, globals(), locals(),
> ['build_time_vars'], 0)
>      0424:    build_time_vars = _temp.build_time_vars
>      0425:    vars.update(build_time_vars)
>      0426:
>      0427:def _init_non_posix(vars):
> Exception: ModuleNotFoundError: No module named '_sysconfigdata'
>
> ERROR: Logfile of failure stored in:
> /home/andrewg/Code/openbmc/build/tmp/work/arm1176jzs-openbmc-linux-gnueabi/phosphor-state-manager/1.0+gitAUTOINC+42f2898d18-r1/devtooltmp-5k9pa8p_/temp/log.do_unpack.3596808
>
> 
>

--0000000000000f8dbd05a72a58a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m not sure if this is distro specific. _PYTHON_=
SYSCONFIGDATA_NAME is set from python3native.bbclass so that native python =
can pick up target configuration, and if the target configuration is not th=
ere (it comes with target python3 build), then there will be a failure like=
 the above. How does your recipe look like? Do you get the same failure if =
you try devtool modify in a plain yocto environment (not the SDK)?<br></div=
><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Tue, 2 Jun 2020 at 23:28, Andrew Geis=
sler &lt;<a href=3D"mailto:geissonator@gmail.com">geissonator@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I se=
e meta-poky/conf/distro/poky.conf lists both Ubuntu 20 and FC32 as supporte=
d but a couple of us have seen issues with running devtool modify using the=
se distros.<br><br>Anyone else seeing this or know of the issue?<br><br>See=
ms like something with _PYTHON_SYSCONFIGDATA_NAME and sysconfig.py.<br><br>=
A quick hack was to modify sysconfig.py _get_sysconfigdata_name() function =
and change _PYTHON_SYSCONFIGDATA_NAME to _PYTHON_SYSCONFIGDATA_NAME_INVALID=
 so the python function will use the alternative _sysconfigdata_{abi}_{plat=
form}_{multiarch}&#39;.format<br><br>We see this building OpenBMC code usin=
g upstream master open-embedded.<br><br>Here&#39;s the full error:<br><br>d=
evtool modify phosphor-state-manager<br>NOTE: Starting bitbake server...<br=
>NOTE: Reconnecting to bitbake server...<br>NOTE: Retrying server connectio=
n (#1)...<br>NOTE: Reconnecting to bitbake server...<br>NOTE: Previous bitb=
ake instance shutting down?, waiting to retry...<br>NOTE: Retrying server c=
onnection (#2)...<br>Loading cache: 100% |#################################=
###########################################################################=
##| Time: 0:00:00<br>Loaded 3614 entries from dependency cache.<br>Parsing =
recipes: 100% |############################################################=
################################################| Time: 0:00:00<br>Parsing =
of 2406 .bb files complete (2404 cached, 2 parsed). 3615 targets, 362 skipp=
ed, 0 masked, 0 errors.<br>NOTE: Resolving any missing task queue dependenc=
ies<br><br>Build Configuration:<br>BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.46.0&quot;<br>BUILD_SYS=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86=
_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;=
ubuntu-20.04&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D &quot;arm-openbmc-linux-gnueabi&quot;<br>MACHINE=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;witherspoon&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;openbmc-with=
erspoon&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &qu=
ot;0.1.0&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &quot;arm thumb arm1176jzs&quot;<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;soft&quot;<br>meta=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 <br>meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-networking=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0 <br>meta-perl=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0 <br>meta-python=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 <br>meta-phosphor=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <=
br>meta-aspeed=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>me=
ta-openpower=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-ibm=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>workspace=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &qu=
ot;master:1ba73b9e60779e905f483b419fc2a801e0d17873&quot;<br><br>Initialisin=
g tasks: 100% |############################################################=
#############################################| Time: 0:00:00<br>Sstate summ=
ary: Wanted 0 Found 0 Missed 0 Current 10 (0% match, 100% complete)<br>NOTE=
: Executing Tasks<br>ERROR: Error executing a python function in exec_pytho=
n_func() autogenerated:<br><br>The stack trace of python calls that resulte=
d in this exception/failure was:<br>File: &#39;exec_python_func() autogener=
ated&#39;, lineno: 2, function: &lt;module&gt;<br>=C2=A0=C2=A0=C2=A0=C2=A0 =
0001:<br>=C2=A0*** 0002:devtool_post_unpack(d)<br>=C2=A0=C2=A0=C2=A0=C2=A0 =
0003:<br>File: &#39;/home/andrewg/Code/openbmc/meta/classes/devtool-source.=
bbclass&#39;, lineno: 68, function: devtool_post_unpack<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 0064:}<br>=C2=A0=C2=A0=C2=A0=C2=A0 0065:<br>=C2=A0=C2=A0=C2=A0=
=C2=A0 0066:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0067:python devtool_post_unpack()=
 {<br>=C2=A0*** 0068:=C2=A0=C2=A0=C2=A0 import oe.recipeutils<br>=C2=A0=C2=
=A0=C2=A0=C2=A0 0069:=C2=A0=C2=A0=C2=A0 import shutil<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 0070:=C2=A0=C2=A0=C2=A0 sys.path.insert(0, os.path.join(d.getVar=
(&#39;COREBASE&#39;), &#39;scripts&#39;, &#39;lib&#39;))<br>=C2=A0=C2=A0=C2=
=
=A0=C2=A0 0071:=C2=A0=C2=A0=C2=A0 import scriptutils<br>=C2=A0=C2=A0=C2=A0=
=
=C2=A0 0072:=C2=A0=C2=A0=C2=A0 from devtool import setup_git_repo<br>File:=
 &#39;/home/andrewg/Code/openbmc/meta/lib/oe/recipeutils.py&#39;, lineno: 2=
1, function: &lt;module&gt;<br>=C2=A0=C2=A0=C2=A0=C2=A0 0017:import shutil<=
br>=C2=A0=C2=A0=C2=A0=C2=A0 0018:import re<br>=C2=A0=C2=A0=C2=A0=C2=A0 0019=
:import fnmatch<br>=C2=A0=C2=A0=C2=A0=C2=A0 0020:import glob<br>=C2=A0*** 0=
021:import bb.tinfoil<br>=C2=A0=C2=A0=C2=A0=C2=A0 0022:<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 0023:from collections import OrderedDict, defaultdict<br>=C2=A0=
=C2=A0=C2=A0=C2=A0 0024:from bb.utils import vercmp_string<br>=C2=A0=C2=A0=
=
=C2=A0=C2=A0 0025:<br>File: &#39;/home/andrewg/Code/openbmc/poky/bitbake/l=
ib/bb/tinfoil.py&#39;, lineno: 19, function: &lt;module&gt;<br>=C2=A0=C2=A0=
=
=C2=A0=C2=A0 0015:from collections import OrderedDict, defaultdict<br>=C2=
=A0=C2=A0=C2=A0=C2=A0 0016:from functools import partial<br>=C2=A0=C2=A0=
=C2=A0=C2=A0 0017:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0018:import bb.cache<br>=C2=
=
=A0*** 0019:import bb.cooker<br>=C2=A0=C2=A0=C2=A0=C2=A0 0020:import bb.pr=
oviders<br>=C2=A0=C2=A0=C2=A0=C2=A0 0021:import bb.taskdata<br>=C2=A0=C2=A0=
=
=C2=A0=C2=A0 0022:import bb.utils<br>=C2=A0=C2=A0=C2=A0=C2=A0 0023:import =
bb.command<br>File: &#39;/home/andrewg/Code/openbmc/poky/bitbake/lib/bb/coo=
ker.py&#39;, lineno: 25, function: &lt;module&gt;<br>=C2=A0=C2=A0=C2=A0=C2=
=A0 0021:import bb, bb.exceptions, bb.command<br>=C2=A0=C2=A0=C2=A0=C2=A0 =
0022:from bb import utils, data, parse, event, cache, providers, taskdata, =
runqueue, build<br>=C2=A0=C2=A0=C2=A0=C2=A0 0023:import queue<br>=C2=A0=C2=
=A0=C2=A0=C2=A0 0024:import signal<br>=C2=A0*** 0025:import prserv.serv<br=
>=C2=A0=C2=A0=C2=A0=C2=A0 0026:import pyinotify<br>=C2=A0=C2=A0=C2=A0=C2=A0=
 0027:import json<br>=C2=A0=C2=A0=C2=A0=C2=A0 0028:import pickle<br>=C2=A0=
=C2=A0=C2=A0=C2=A0 0029:import codecs<br>File: &#39;/home/andrewg/Code/ope=
nbmc/poky/bitbake/lib/prserv/serv.py&#39;, lineno: 7, function: &lt;module&=
gt;<br>=C2=A0=C2=A0=C2=A0=C2=A0 0003:#<br>=C2=A0=C2=A0=C2=A0=C2=A0 0004:<br=
>=C2=A0=C2=A0=C2=A0=C2=A0 0005:import os,sys,logging<br>=C2=A0=C2=A0=C2=A0=
=C2=A0 0006:import signal, time<br>=C2=A0*** 0007:from xmlrpc.server impor=
t SimpleXMLRPCServer, SimpleXMLRPCRequestHandler<br>=C2=A0=C2=A0=C2=A0=C2=
=A0 0008:import threading<br>=C2=A0=C2=A0=C2=A0=C2=A0 0009:import queue<br=
>=C2=A0=C2=A0=C2=A0=C2=A0 0010:import socket<br>=C2=A0=C2=A0=C2=A0=C2=A0 00=
11:import io<br>File: &#39;/opt/poky/3.1/sysroots/x86_64-pokysdk-linux/usr/=
lib/python3.8/xmlrpc/server.py&#39;, lineno: 117, function: &lt;module&gt;<=
br>=C2=A0=C2=A0=C2=A0=C2=A0 0113:import socketserver<br>=C2=A0=C2=A0=C2=A0=
=C2=A0 0114:import sys<br>=C2=A0=C2=A0=C2=A0=C2=A0 0115:import os<br>=C2=
=A0=C2=A0=C2=A0=C2=A0 0116:import re<br>=C2=A0*** 0117:import pydoc<br>=C2=
=
=A0=C2=A0=C2=A0=C2=A0 0118:import traceback<br>=C2=A0=C2=A0=C2=A0=C2=A0 01=
19:try:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0120:=C2=A0=C2=A0=C2=A0 import fcntl<br=
>=C2=A0=C2=A0=C2=A0=C2=A0 0121:except ImportError:<br>File: &#39;/opt/poky/=
3.1/sysroots/x86_64-pokysdk-linux/usr/lib/python3.8/pydoc.py&#39;, lineno: =
366, function: &lt;module&gt;<br>=C2=A0=C2=A0=C2=A0=C2=A0 0362:=C2=A0=C2=A0=
=
=C2=A0 return module<br>=C2=A0=C2=A0=C2=A0=C2=A0 0363:<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 0364:# ---------------------------------------------------- form=
atter base class<br>=C2=A0=C2=A0=C2=A0=C2=A0 0365:<br>=C2=A0*** 0366:class =
Doc:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0367:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0368:=C2=
=
=A0=C2=A0=C2=A0 PYTHONDOCS =3D os.environ.get(&quot;PYTHONDOCS&quot;,<br>=
=C2=A0=C2=A0=C2=A0=C2=A0 0369:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &=
quot;<a href=3D"https://docs.python.org/%d.%d/library" target=3D"_blank">ht=
tps://docs.python.org/%d.%d/library</a>&quot;<br>=C2=A0=C2=A0=C2=A0=C2=A0 0=
370:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 % sys.version_info[:2])<br>F=
ile: &#39;/opt/poky/3.1/sysroots/x86_64-pokysdk-linux/usr/lib/python3.8/pyd=
oc.py&#39;, lineno: 396, function: Doc<br>=C2=A0=C2=A0=C2=A0=C2=A0 0392:=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise TypeError(message)<br>=C2=A0=
=
=C2=A0=C2=A0=C2=A0 0393:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0394:=C2=A0=C2=A0=C2=
=A0 docmodule =3D docclass =3D docroutine =3D docother =3D docproperty =3D=
 docdata =3D fail<br>=C2=A0=C2=A0=C2=A0=C2=A0 0395:<br>=C2=A0*** 0396:=C2=
=A0=C2=A0=C2=A0 def getdocloc(self, object, basedir=3Dsysconfig.get_path(&=
#39;stdlib&#39;)):<br>=C2=A0=C2=A0=C2=A0=C2=A0 0397:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 &quot;&quot;&quot;Return the location of module docs=
 or None&quot;&quot;&quot;<br>=C2=A0=C2=A0=C2=A0=C2=A0 0398:<br>=C2=A0=C2=
=A0=C2=A0=C2=A0 0399:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:<br>=
=C2=A0=C2=A0=C2=A0=C2=A0 0400:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 file =3D inspect.getabsfile(object)<br>File: &#39=
;/opt/poky/3.1/sysroots/x86_64-pokysdk-linux/usr/lib/python3.8/sysconfig.py=
&#39;, lineno: 514, function: get_path<br>=C2=A0=C2=A0=C2=A0=C2=A0 0510:=C2=
=
=A0=C2=A0=C2=A0 &quot;&quot;&quot;Return a path corresponding to the schem=
e.<br>=C2=A0=C2=A0=C2=A0=C2=A0 0511:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0512:=C2=
=A0=C2=A0=C2=A0 ``scheme`` is the install scheme name.<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 0513:=C2=A0=C2=A0=C2=A0 &quot;&quot;&quot;<br>=C2=A0*** 0514:=C2=
=
=A0=C2=A0=C2=A0 return get_paths(scheme, vars, expand)[name]<br>=C2=A0=C2=
=A0=C2=A0=C2=A0 0515:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0516:<br>=C2=A0=C2=A0=C2=
=
=A0=C2=A0 0517:def get_config_vars(*args):<br>=C2=A0=C2=A0=C2=A0=C2=A0 051=
8:=C2=A0=C2=A0=C2=A0 &quot;&quot;&quot;With no arguments, return a dictiona=
ry of all configuration<br>File: &#39;/opt/poky/3.1/sysroots/x86_64-pokysdk=
-linux/usr/lib/python3.8/sysconfig.py&#39;, lineno: 504, function: get_path=
s<br>=C2=A0=C2=A0=C2=A0=C2=A0 0500:=C2=A0=C2=A0=C2=A0 ``scheme`` is the ins=
tall scheme name. If not provided, it will<br>=C2=A0=C2=A0=C2=A0=C2=A0 0501=
:=C2=A0=C2=A0=C2=A0 return the default scheme for the current platform.<br>=
=
=C2=A0=C2=A0=C2=A0=C2=A0 0502:=C2=A0=C2=A0=C2=A0 &quot;&quot;&quot;<br>=C2=
=
=A0=C2=A0=C2=A0=C2=A0 0503:=C2=A0=C2=A0=C2=A0 if expand:<br>=C2=A0*** 0504=
:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return _expand_vars(scheme, var=
s)<br>=C2=A0=C2=A0=C2=A0=C2=A0 0505:=C2=A0=C2=A0=C2=A0 else:<br>=C2=A0=C2=
=A0=C2=A0=C2=A0 0506:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return _IN=
STALL_SCHEMES[scheme]<br>=C2=A0=C2=A0=C2=A0=C2=A0 0507:<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 0508:<br>File: &#39;/opt/poky/3.1/sysroots/x86_64-pokysdk-linux/=
usr/lib/python3.8/sysconfig.py&#39;, lineno: 172, function: _expand_vars<br=
>=C2=A0=C2=A0=C2=A0=C2=A0 0168:def _expand_vars(scheme, vars):<br>=C2=A0=C2=
=
=A0=C2=A0=C2=A0 0169:=C2=A0=C2=A0=C2=A0 res =3D {}<br>=C2=A0=C2=A0=C2=A0=
=C2=A0 0170:=C2=A0=C2=A0=C2=A0 if vars is None:<br>=C2=A0=C2=A0=C2=A0=C2=
=A0 0171:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 vars =3D {}<br>=C2=A0*=
** 0172:=C2=A0=C2=A0=C2=A0 _extend_dict(vars, get_config_vars())<br>=C2=A0=
=C2=A0=C2=A0=C2=A0 0173:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0174:=C2=A0=C2=A0=C2=
=A0 for key, value in _INSTALL_SCHEMES[scheme].items():<br>=C2=A0=C2=A0=C2=
=
=A0=C2=A0 0175:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if <a href=3D"ht=
tp://os.name" target=3D"_blank">os.name</a> in (&#39;posix&#39;, &#39;nt&#3=
9;):<br>=C2=A0=C2=A0=C2=A0=C2=A0 0176:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 value =3D os.path.expanduser(value)<br>File=
: &#39;/opt/poky/3.1/sysroots/x86_64-pokysdk-linux/usr/lib/python3.8/syscon=
fig.py&#39;, lineno: 552, function: get_config_vars<br>=C2=A0=C2=A0=C2=A0=
=C2=A0 0548:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0549:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 if <a href=3D"http://os.name" target=3D"_blank">os.name</a=
> =3D=3D &#39;nt&#39;:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0550:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _init_non_posix(_CONFIG_V=
ARS)<br>=C2=A0=C2=A0=C2=A0=C2=A0 0551:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 if <a href=3D"http://os.name" target=3D"_blank">os.name</a> =3D=3D =
&#39;posix&#39;:<br>=C2=A0*** 0552:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 _init_posix(_CONFIG_VARS)<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 0553:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # For backward c=
ompatibility, see issue19555<br>=C2=A0=C2=A0=C2=A0=C2=A0 0554:=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SO =3D _CONFIG_VARS.get(&#39;EXT_SUFFIX&#39=
;)<br>=C2=A0=C2=A0=C2=A0=C2=A0 0555:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0 if SO is not None:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0556:=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _CONFIG_VARS[&#39;SO&#39;=
] =3D SO<br>File: &#39;/opt/poky/3.1/sysroots/x86_64-pokysdk-linux/usr/lib/=
python3.8/sysconfig.py&#39;, lineno: 423, function: _init_posix<br>=C2=A0=
=C2=A0=C2=A0=C2=A0 0419:def _init_posix(vars):<br>=C2=A0=C2=A0=C2=A0=C2=A0=
 0420:=C2=A0=C2=A0=C2=A0 &quot;&quot;&quot;Initialize the module as appropr=
iate for POSIX systems.&quot;&quot;&quot;<br>=C2=A0=C2=A0=C2=A0=C2=A0 0421:=
=
=C2=A0=C2=A0=C2=A0 # _sysconfigdata is generated at build time, see _gener=
ate_posix_vars()<br>=C2=A0=C2=A0=C2=A0=C2=A0 0422:=C2=A0=C2=A0=C2=A0 name =
=3D _get_sysconfigdata_name()<br>=C2=A0*** 0423:=C2=A0=C2=A0=C2=A0 _temp =
=3D __import__(name, globals(), locals(), [&#39;build_time_vars&#39;], 0)<=
br>=C2=A0=C2=A0=C2=A0=C2=A0 0424:=C2=A0=C2=A0=C2=A0 build_time_vars =3D _te=
mp.build_time_vars<br>=C2=A0=C2=A0=C2=A0=C2=A0 0425:=C2=A0=C2=A0=C2=A0 vars=
.update(build_time_vars)<br>=C2=A0=C2=A0=C2=A0=C2=A0 0426:<br>=C2=A0=C2=A0=
=C2=A0=C2=A0 0427:def _init_non_posix(vars):<br>Exception: ModuleNotFoundE=
rror: No module named &#39;_sysconfigdata&#39;<br><br>ERROR: Logfile of fai=
lure stored in: /home/andrewg/Code/openbmc/build/tmp/work/arm1176jzs-openbm=
c-linux-gnueabi/phosphor-state-manager/1.0+gitAUTOINC+42f2898d18-r1/devtool=
tmp-5k9pa8p_/temp/log.do_unpack.3596808<br><span style=3D"color:rgb(255,255=
,255);font-family:Helvetica;font-size:12px;font-style:normal;font-variant-c=
aps:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-deco=
ration:none;display:inline;float:none"><br></span>
<br>
</blockquote></div>

--0000000000000f8dbd05a72a58a2--
