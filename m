Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDF78E009CA; Sat, 11 Feb 2017 09:52:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC4ACE0086E
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 09:51:58 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Feb 2017 09:51:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,147,1484035200"; 
	d="asc'?log'?scan'208";a="819758157"
Received: from ktgopals-mobl4.gar.corp.intel.com (HELO [10.255.87.221])
	([10.255.87.221])
	by FMSMGA003.fm.intel.com with ESMTP; 11 Feb 2017 09:51:56 -0800
To: yocto@yoctoproject.org
References: <1486835474-10096-1-git-send-email-anibal.limon@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <589F5000.8050402@linux.intel.com>
Date: Sat, 11 Feb 2017 11:55:12 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1486835474-10096-1-git-send-email-anibal.limon@linux.intel.com>
Subject: Re: [[RFC][PATCH]] yocto-compat-layer.py: Add script to YP Compatible Layer validation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 11 Feb 2017 17:52:00 -0000
X-Groupsio-MsgNum: 34417
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="VCoJ8u0uN0g3qphlPP8aBKebSkVIGOHDc"

--VCoJ8u0uN0g3qphlPP8aBKebSkVIGOHDc
Content-Type: multipart/mixed;
 boundary="------------010205050607070702050309"

--------------010205050607070702050309
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

During the development of this script based on OEQA framework i found a
bug causing don't display stack traces, i sent a fix to the ML [1] also
is on my branch at [2].

I attached and example of how a log file looks, the example log results
are based on meta-yocto-bsp.

Cheers,
	alimon

[1]
http://lists.openembedded.org/pipermail/openembedded-core/2017-February/1=
32494.html
[2]
http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dalimon/yp=
_compatible

On 02/11/2017 11:51 AM, An=C3=ADbal Lim=C3=B3n wrote:
> The yocto-compat-layer script serves as a tool to validate the aligname=
nt
> of a layer with YP Compatible Layers Programme [1], is based on an RFC
> sent to the ML to enable automatic testing of layers [2] that wants to
> be YP Compatible.
>=20
> The tool takes an layer (or set of layers) via command line option -l
> and detects what kind of layer is distro, machine or software and then
> executes a  set of tests against the layer in order to validate the
> compatibility.
>=20
> The tests currently implemented are:
>=20
> common.test_readme: Test if a README file exists in the layer and isn't=

>     empty.
> common.test_parse: Test for execute bitbake -p without errors.
> common.test_show_environment: Test for execute bitbake -e without error=
s.
> common.test_signatures: Test executed in BSP and DISTRO layers to revie=
w
>     doesn't comes with recipes that changes the signatures.
>=20
> bsp.test_bsp_defines_machines: Test if a BSP layers has machines
>     configurations.
> bsp.test_bsp_no_set_machine: Test the BSP layer to doesn't set
>     machine at adding layer.
>=20
> distro.test_distro_defines_distros: Test if a DISTRO layers has distro
>     configurations.
> distro.test_distro_no_set_distro: Test the DISTRO layer to doesn't set
>     distro at adding layer.
>=20
> Example of usage:
>=20
> $ source oe-init-build-env
> $ yocto-compat-layer.py -l LAYER_DIR
>=20
> [YOCTO #10596]
>=20
> [1] https://www.yoctoproject.org/webform/yocto-project-compatible-regis=
tration
> [2] https://lists.yoctoproject.org/pipermail/yocto-ab/2016-October/0018=
01.html
>=20
> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
> ---
>  scripts/lib/compatlayer/__init__.py       | 160 ++++++++++++++++++++++=
++++++++
>  scripts/lib/compatlayer/case.py           |   7 ++
>  scripts/lib/compatlayer/cases/__init__.py |   0
>  scripts/lib/compatlayer/cases/bsp.py      |  26 +++++
>  scripts/lib/compatlayer/cases/common.py   |  66 ++++++++++++
>  scripts/lib/compatlayer/cases/distro.py   |  26 +++++
>  scripts/lib/compatlayer/context.py        |  14 +++
>  scripts/yocto-compat-layer.py             | 160 ++++++++++++++++++++++=
++++++++
>  8 files changed, 459 insertions(+)
>  create mode 100644 scripts/lib/compatlayer/__init__.py
>  create mode 100644 scripts/lib/compatlayer/case.py
>  create mode 100644 scripts/lib/compatlayer/cases/__init__.py
>  create mode 100644 scripts/lib/compatlayer/cases/bsp.py
>  create mode 100644 scripts/lib/compatlayer/cases/common.py
>  create mode 100644 scripts/lib/compatlayer/cases/distro.py
>  create mode 100644 scripts/lib/compatlayer/context.py
>  create mode 100755 scripts/yocto-compat-layer.py
>=20
> diff --git a/scripts/lib/compatlayer/__init__.py b/scripts/lib/compatla=
yer/__init__.py
> new file mode 100644
> index 0000000..21b1b87
> --- /dev/null
> +++ b/scripts/lib/compatlayer/__init__.py
> @@ -0,0 +1,160 @@
> +# Yocto Project compatibility layer tool
> +#
> +# Copyright (C) 2017 Intel Corporation
> +# Released under the MIT license (see COPYING.MIT)
> +
> +import os
> +from enum import Enum
> +
> +class LayerType(Enum):
> +    BSP =3D 0
> +    DISTRO =3D 1
> +    SOFTWARE =3D 2
> +    ERROR_NO_LAYER_CONF =3D 98
> +    ERROR_BSP_DISTRO =3D 99
> +
> +def _get_configurations(path):
> +    configs =3D []
> +
> +    for f in os.listdir(path):
> +        file_path =3D os.path.join(path, f)
> +        if os.path.isfile(file_path) and f.endswith('.conf'):
> +            configs.append(f[:-5]) # strip .conf
> +    return configs
> +
> +def _get_layer_collections(layer_path, lconf=3DNone, data=3DNone):
> +    import bb.parse
> +    import bb.data
> +
> +    if lconf is None:
> +        lconf =3D os.path.join(layer_path, 'conf', 'layer.conf')
> +
> +    if data is None:
> +        ldata =3D bb.data.init()
> +        bb.parse.init_parser(ldata)
> +    else:
> +        ldata =3D data.createCopy()
> +
> +    ldata.setVar('LAYERDIR', layer_path)
> +    try:
> +        ldata =3D bb.parse.handle(lconf, ldata, include=3DTrue)
> +    except BaseException as exc:
> +        raise LayerError(exc)
> +    ldata.expandVarref('LAYERDIR')
> +
> +    collections =3D (ldata.getVar('BBFILE_COLLECTIONS', True) or '').s=
plit()
> +    if not collections:
> +        name =3D os.path.basename(layer_path)
> +        collections =3D [name]
> +
> +    collections =3D {c: {} for c in collections}
> +    for name in collections:
> +        priority =3D ldata.getVar('BBFILE_PRIORITY_%s' % name, True)
> +        pattern =3D ldata.getVar('BBFILE_PATTERN_%s' % name, True)
> +        depends =3D ldata.getVar('LAYERDEPENDS_%s' % name, True)
> +        collections[name]['priority'] =3D priority
> +        collections[name]['pattern'] =3D pattern
> +        collections[name]['depends'] =3D depends
> +
> +    return collections
> +
> +def _detect_layer(layer_path):
> +    """
> +        Scans layer directory to detect what type of layer
> +        is BSP, Distro or Software.
> +
> +        Returns a dictionary with layer name, type and path.
> +    """
> +
> +    layer =3D {}
> +    layer_name =3D os.path.basename(layer_path)
> +
> +    layer['name'] =3D layer_name
> +    layer['path'] =3D layer_path
> +    layer['conf'] =3D {}
> +
> +    if not os.path.isfile(os.path.join(layer_path, 'conf', 'layer.conf=
')):
> +        layer['type'] =3D LayerType.ERROR_NO_LAYER_CONF
> +        return layer
> +
> +    machine_conf =3D os.path.join(layer_path, 'conf', 'machine')
> +    distro_conf =3D os.path.join(layer_path, 'conf', 'distro')
> +
> +    is_bsp =3D False
> +    is_distro =3D False
> +
> +    if os.path.isdir(machine_conf):
> +        machines =3D _get_configurations(machine_conf)
> +        if machines:
> +            is_bsp =3D True
> +
> +    if os.path.isdir(distro_conf):
> +        distros =3D _get_configurations(distro_conf)
> +        if distros:
> +            is_distro =3D True
> +
> +    if is_bsp and is_distro:
> +        layer['type'] =3D LayerType.ERROR_BSP_DISTRO
> +    elif is_bsp:
> +        layer['type'] =3D LayerType.BSP
> +        layer['conf']['machines'] =3D machines
> +    elif is_distro:
> +        layer['type'] =3D LayerType.DISTRO
> +        layer['conf']['distros'] =3D distros
> +    else:
> +        layer['type'] =3D LayerType.SOFTWARE
> +
> +    layer['collections'] =3D _get_layer_collections(layer['path'])
> +
> +    return layer
> +
> +def detect_layers(directory):
> +    layers =3D []
> +
> +    for root, dirs, files in os.walk(directory):
> +        dir_name =3D os.path.basename(root)
> +
> +        conf_dir =3D os.path.join(root, 'conf')
> +        if dir_name.startswith('meta-') and os.path.isdir(conf_dir):
> +            layer =3D _detect_layer(root)
> +            if layer:
> +                layers.append(layer)
> +
> +    return layers
> +
> +def add_layer(bblayersconf, layer):
> +    with open(bblayersconf, 'a+') as f:
> +        f.write("\nBBLAYERS +=3D \"%s\"\n" % layer['path'])
> +
> +def get_signatures(builddir, failsafe=3DFalse):
> +    import subprocess
> +    import re
> +
> +    sigs =3D {}
> +
> +    try:
> +        cmd =3D 'bitbake '
> +        if failsafe:
> +            cmd +=3D '-k '
> +        cmd +=3D '-S none world'
> +        output =3D subprocess.check_output(cmd, shell=3DTrue,
> +                stderr=3Dsubprocess.PIPE)
> +    except subprocess.CalledProcessError as e:
> +        import traceback
> +        exc =3D traceback.format_exc()
> +        msg =3D '%s\n%s\n' % (exc, e.output.decode('utf-8'))
> +        raise RuntimeError(msg)
> +    sigs_file =3D os.path.join(builddir, 'locked-sigs.inc')
> +
> +    sig_regex =3D re.compile("^(?P<task>.*:.*):(?P<hash>.*) .$")
> +    with open(sigs_file, 'r') as f:
> +        for line in f.readlines():
> +            line =3D line.strip()
> +            s =3D sig_regex.match(line)
> +            if s:
> +                sigs[s.group('task')] =3D s.group('hash')
> +
> +    if not sigs:
> +        raise RuntimeError('Can\'t load signatures from %s' % sigs_fil=
e)
> +
> +    return sigs
> diff --git a/scripts/lib/compatlayer/case.py b/scripts/lib/compatlayer/=
case.py
> new file mode 100644
> index 0000000..54ce78a
> --- /dev/null
> +++ b/scripts/lib/compatlayer/case.py
> @@ -0,0 +1,7 @@
> +# Copyright (C) 2017 Intel Corporation
> +# Released under the MIT license (see COPYING.MIT)
> +
> +from oeqa.core.case import OETestCase
> +
> +class OECompatLayerTestCase(OETestCase):
> +    pass
> diff --git a/scripts/lib/compatlayer/cases/__init__.py b/scripts/lib/co=
mpatlayer/cases/__init__.py
> new file mode 100644
> index 0000000..e69de29
> diff --git a/scripts/lib/compatlayer/cases/bsp.py b/scripts/lib/compatl=
ayer/cases/bsp.py
> new file mode 100644
> index 0000000..5d9bf93
> --- /dev/null
> +++ b/scripts/lib/compatlayer/cases/bsp.py
> @@ -0,0 +1,26 @@
> +# Copyright (C) 2017 Intel Corporation
> +# Released under the MIT license (see COPYING.MIT)
> +
> +import unittest
> +
> +from compatlayer import LayerType
> +from compatlayer.case import OECompatLayerTestCase
> +
> +class BSPCompatLayer(OECompatLayerTestCase):
> +    @classmethod
> +    def setUpClass(self):
> +        if self.tc.layer['type'] !=3D LayerType.BSP:
> +            raise unittest.SkipTest("BSPCompatLayer: Layer %s isn't BS=
P one." %\
> +                self.tc.layer['name'])
> +
> +    def test_bsp_defines_machines(self):
> +        self.assertTrue(self.tc.layer['conf']['machines'],=20
> +                "Layer is BSP but doesn't defines machines.")
> +
> +    def test_bsp_no_set_machine(self):
> +        from oeqa.utils.commands import get_bb_var
> +
> +        machine =3D get_bb_var('MACHINE')
> +        self.assertEqual(self.td['bbvars']['MACHINE'], machine,
> +                msg=3D"Layer %s modified machine %s -> %s" % \
> +                    (self.tc.layer['name'], self.td['bbvars']['MACHINE=
'], machine))
> diff --git a/scripts/lib/compatlayer/cases/common.py b/scripts/lib/comp=
atlayer/cases/common.py
> new file mode 100644
> index 0000000..4d328ec
> --- /dev/null
> +++ b/scripts/lib/compatlayer/cases/common.py
> @@ -0,0 +1,66 @@
> +# Copyright (C) 2017 Intel Corporation
> +# Released under the MIT license (see COPYING.MIT)
> +
> +import os
> +import subprocess
> +import unittest
> +from compatlayer import get_signatures, LayerType
> +from compatlayer.case import OECompatLayerTestCase
> +
> +class CommonCompatLayer(OECompatLayerTestCase):
> +    def test_readme(self):
> +        readme_file =3D os.path.join(self.tc.layer['path'], 'README')
> +        self.assertTrue(os.path.isfile(readme_file),
> +                msg=3D"Layer doesn't contains README file.")
> +
> +        data =3D ''
> +        with open(readme_file, 'r') as f:
> +            data =3D f.read()
> +        self.assertTrue(data,
> +                msg=3D"Layer contains README file but is empty.")
> +
> +    def test_parse(self):
> +        try:
> +            output =3D subprocess.check_output('bitbake -p', shell=3DT=
rue,
> +                    stderr=3Dsubprocess.PIPE)
> +        except subprocess.CalledProcessError as e:
> +            import traceback
> +            exc =3D traceback.format_exc()
> +            msg =3D 'Layer %s failed to parse.\n%s\n%s\n' % (self.tc.l=
ayer['name'],
> +                    exc, e.output.decode('utf-8'))
> +            raise RuntimeError(msg)
> +
> +    def test_show_environment(self):
> +        try:
> +            output =3D subprocess.check_output('bitbake -e', shell=3DT=
rue,
> +                    stderr=3Dsubprocess.PIPE)
> +        except subprocess.CalledProcessError as e:
> +            import traceback
> +            exc =3D traceback.format_exc()
> +            msg =3D 'Layer %s failed to show environment.\n%s\n%s\n' %=
 \
> +                    (self.tc.layer['name'], exc, e.output.decode('utf-=
8'))
> +            raise RuntimeError(msg)
> +
> +    def test_signatures(self):
> +        if self.tc.layer['type'] =3D=3D LayerType.SOFTWARE:
> +            raise unittest.SkipTest("Layer %s isn't BSP or DISTRO one.=
" \
> +                     % self.tc.layer['name'])
> +
> +        sig_diff =3D {}
> +
> +        curr_sigs =3D get_signatures(self.td['builddir'], failsafe=3DT=
rue)
> +        for task in self.td['sigs']:
> +            if task not in curr_sigs:
> +                continue
> +
> +            if self.td['sigs'][task] !=3D curr_sigs[task]:
> +                sig_diff[task] =3D '%s -> %s' % \
> +                        (self.td['sigs'][task], curr_sigs[task])
> +
> +        detail =3D ''
> +        if sig_diff:
> +            for task in sig_diff:
> +                detail +=3D "%s changed %s\n" % (task, sig_diff[task])=

> +        self.assertFalse(bool(sig_diff), "Layer %s changed signatures.=
\n%s" % \
> +                (self.tc.layer['name'], detail))
> +
> diff --git a/scripts/lib/compatlayer/cases/distro.py b/scripts/lib/comp=
atlayer/cases/distro.py
> new file mode 100644
> index 0000000..523acc1
> --- /dev/null
> +++ b/scripts/lib/compatlayer/cases/distro.py
> @@ -0,0 +1,26 @@
> +# Copyright (C) 2017 Intel Corporation
> +# Released under the MIT license (see COPYING.MIT)
> +
> +import unittest
> +
> +from compatlayer import LayerType
> +from compatlayer.case import OECompatLayerTestCase
> +
> +class DistroCompatLayer(OECompatLayerTestCase):
> +    @classmethod
> +    def setUpClass(self):
> +        if self.tc.layer['type'] !=3D LayerType.DISTRO:
> +            raise unittest.SkipTest("DistroCompatLayer: Layer %s isn't=
 Distro one." %\
> +                self.tc.layer['name'])
> +
> +    def test_distro_defines_distros(self):
> +        self.assertTrue(self.tc.layer['conf']['distros'],=20
> +                "Layer is BSP but doesn't defines machines.")
> +
> +    def test_distro_no_set_distros(self):
> +        from oeqa.utils.commands import get_bb_var
> +
> +        distro =3D get_bb_var('DISTRO')
> +        self.assertEqual(self.td['bbvars']['DISTRO'], distro,
> +                msg=3D"Layer %s modified distro %s -> %s" % \
> +                    (self.tc.layer['name'], self.td['bbvars']['DISTRO'=
], distro))
> diff --git a/scripts/lib/compatlayer/context.py b/scripts/lib/compatlay=
er/context.py
> new file mode 100644
> index 0000000..4932238
> --- /dev/null
> +++ b/scripts/lib/compatlayer/context.py
> @@ -0,0 +1,14 @@
> +# Copyright (C) 2017 Intel Corporation
> +# Released under the MIT license (see COPYING.MIT)
> +
> +import os
> +import sys
> +import glob
> +import re
> +
> +from oeqa.core.context import OETestContext
> +
> +class CompatLayerTestContext(OETestContext):
> +    def __init__(self, td=3DNone, logger=3DNone, layer=3DNone):
> +        super(CompatLayerTestContext, self).__init__(td, logger)
> +        self.layer =3D layer
> diff --git a/scripts/yocto-compat-layer.py b/scripts/yocto-compat-layer=
=2Epy
> new file mode 100755
> index 0000000..b335630
> --- /dev/null
> +++ b/scripts/yocto-compat-layer.py
> @@ -0,0 +1,160 @@
> +#!/usr/bin/env python3
> +
> +# Yocto Project compatibility layer tool
> +#
> +# Copyright (C) 2017 Intel Corporation
> +# Released under the MIT license (see COPYING.MIT)
> +
> +import os
> +import sys
> +import argparse
> +import logging
> +import time
> +import signal
> +import shutil
> +import collections
> +
> +scripts_path =3D os.path.dirname(os.path.realpath(__file__))
> +lib_path =3D scripts_path + '/lib'
> +sys.path =3D sys.path + [lib_path]
> +import scriptutils
> +import scriptpath
> +scriptpath.add_oe_lib_path()
> +scriptpath.add_bitbake_lib_path()
> +
> +from compatlayer import LayerType, detect_layers, add_layer, get_signa=
tures
> +from oeqa.utils.commands import get_bb_vars
> +
> +PROGNAME =3D 'yocto-compat-layer'
> +DEFAULT_OUTPUT_LOG =3D '%s-%s.log' % (PROGNAME,
> +        time.strftime("%Y%m%d%H%M%S"))
> +OUTPUT_LOG_LINK =3D "%s.log" % PROGNAME
> +CASES_PATHS =3D [os.path.join(os.path.abspath(os.path.dirname(__file__=
)),
> +                'lib', 'compatlayer', 'cases')]
> +logger =3D scriptutils.logger_create(PROGNAME)
> +
> +def test_layer_compatibility(td, layer):
> +    from compatlayer.context import CompatLayerTestContext
> +    logger.info("Starting to analyze: %s" % layer['name'])
> +    logger.info("-----------------------------------------------------=
-----------------")
> +
> +    tc =3D CompatLayerTestContext(td=3Dtd, logger=3Dlogger, layer=3Dla=
yer)
> +    tc.loadTests(CASES_PATHS)
> +    return tc.runTests()
> +
> +def main():
> +    parser =3D argparse.ArgumentParser(
> +            description=3D"Yocto Project compatibility layer tool",
> +            add_help=3DFalse)
> +    parser.add_argument('-l', '--layer', metavar=3D'LAYER_DIR',
> +            help=3D'Layer to test compatibility with Yocto Project',
> +            action=3D'store', required=3DTrue)
> +    parser.add_argument('-o', '--output-log',
> +            help=3D'Output log default: %s' % DEFAULT_OUTPUT_LOG,
> +            action=3D'store', default=3DDEFAULT_OUTPUT_LOG)
> +
> +    parser.add_argument('-d', '--debug', help=3D'Enable debug output',=

> +            action=3D'store_true')
> +    parser.add_argument('-q', '--quiet', help=3D'Print only errors',
> +            action=3D'store_true')
> +
> +    parser.add_argument('-h', '--help', action=3D'help',
> +            default=3Dargparse.SUPPRESS,
> +            help=3D'show this help message and exit')
> +
> +    args =3D parser.parse_args()
> +
> +    fh =3D logging.FileHandler(args.output_log)
> +    fh.setFormatter(logging.Formatter("%(levelname)s: %(message)s"))
> +    logger.addHandler(fh)
> +    if args.debug:
> +        logger.setLevel(logging.DEBUG)
> +    elif args.quiet:
> +        logger.setLevel(logging.ERROR)
> +    if os.path.exists(OUTPUT_LOG_LINK):
> +        os.unlink(OUTPUT_LOG_LINK)
> +    os.symlink(args.output_log, OUTPUT_LOG_LINK)
> +
> +    if not 'BUILDDIR' in os.environ:
> +        logger.error("You must source the environment before run this =
script.")
> +        logger.error("$ source oe-init-build-env")
> +        return 1
> +    builddir =3D os.environ['BUILDDIR']
> +    bblayersconf =3D os.path.join(builddir, 'conf', 'bblayers.conf')
> +
> +    if args.layer[-1] =3D=3D '/':
> +        args.layer =3D args.layer[0:-1]
> +    if not os.path.isdir(args.layer):
> +        logger.error("Layer: %s isn't a directory" % args.layer)
> +        return 1
> +
> +    layers =3D detect_layers(args.layer)
> +    if not layers:
> +        logger.error("Fail to detect layers")
> +        return 1
> +
> +    logger.info("Detected layers:")
> +    for layer in layers:
> +        if layer['type'] =3D=3D LayerType.ERROR_BSP_DISTRO:
> +            logger.error("%s: Can't be DISTRO and BSP type at the same=
 time."\
> +                     " The conf/distro and conf/machine folders was fo=
und."\
> +                     % layer['name'])
> +            layers.remove(layer)
> +        elif layer['type'] =3D=3D LayerType.ERROR_NO_LAYER_CONF:
> +            logger.error("%s: Don't have conf/layer.conf file."\
> +                     % layer['name'])
> +            layers.remove(layer)
> +        else:
> +            logger.info("%s: %s, %s" % (layer['name'], layer['type'],
> +                layer['path']))
> +    if not layers:
> +        return 1
> +
> +    shutil.copyfile(bblayersconf, bblayersconf + '.backup')
> +    def cleanup_bblayers(signum, frame):
> +        shutil.copyfile(bblayersconf + '.backup', bblayersconf)
> +        os.unlink(bblayersconf + '.backup')
> +    signal.signal(signal.SIGTERM, cleanup_bblayers)
> +    signal.signal(signal.SIGINT, cleanup_bblayers)
> +
> +    td =3D {}
> +    results =3D collections.OrderedDict()
> +
> +    logger.info('')
> +    logger.info('Getting initial bitbake variables ...')
> +    td['bbvars'] =3D get_bb_vars()
> +    logger.info('Getting initial signatures ...')
> +    td['builddir'] =3D builddir
> +    td['sigs'] =3D get_signatures(td['builddir'])
> +    logger.info('')
> +
> +    for layer in layers:
> +        if layer['type'] =3D=3D LayerType.ERROR_NO_LAYER_CONF or \
> +                layer['type'] =3D=3D LayerType.ERROR_BSP_DISTRO:
> +            continue
> +
> +        shutil.copyfile(bblayersconf + '.backup', bblayersconf)
> +
> +        add_layer(bblayersconf, layer)
> +        result =3D test_layer_compatibility(td, layer)
> +        results[layer['name']] =3D result
> +
> +    logger.info('')
> +    logger.info('Summary of results:')
> +    logger.info('')
> +    for layer_name in results:
> +        logger.info('%s ... %s' % (layer_name, 'PASS' if \
> +                results[layer_name].wasSuccessful() else 'FAIL'))
> +
> +    cleanup_bblayers(None, None)
> +
> +    return 0
> +
> +if __name__ =3D=3D '__main__':
> +    try:
> +        ret =3D  main()
> +    except Exception:
> +        ret =3D 1
> +        import traceback
> +        traceback.print_exc()
> +    sys.exit(ret)
>=20

--------------010205050607070702050309
Content-Type: text/x-log;
 name="yocto-compat-layer.log"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="yocto-compat-layer.log"

INFO: Detected layers:
INFO: meta-yocto-bsp: LayerType.BSP, /home/alimon/repos/poky/meta-yocto-bsp
INFO:=20
INFO: Getting initial bitbake variables ...
INFO: Getting initial signatures ...
INFO:=20
INFO: Starting to analyze: meta-yocto-bsp
INFO: ---------------------------------------------------------------------=
-
INFO: test_bsp_defines_machines (bsp.BSPCompatLayer) ... ok
INFO: test_bsp_no_set_machine (bsp.BSPCompatLayer) ... ok
INFO: test_parse (common.CommonCompatLayer) ... ok
INFO: test_readme (common.CommonCompatLayer) ... FAIL
INFO: test_show_environment (common.CommonCompatLayer) ... ok
INFO: test_signatures (common.CommonCompatLayer) ... FAIL
INFO: skipped "DistroCompatLayer: Layer meta-yocto-bsp isn't Distro one."
INFO:=20
INFO: =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
INFO: FAIL: test_readme (common.CommonCompatLayer)
INFO: ---------------------------------------------------------------------=
-
INFO: Traceback (most recent call last):
  File "/home/alimon/repos/poky/scripts/lib/compatlayer/cases/common.py", l=
ine 14, in test_readme
    msg=3D"Layer doesn't contains README file.")
AssertionError: False is not true : Layer doesn't contains README file.
INFO: =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
INFO: FAIL: test_signatures (common.CommonCompatLayer)
INFO: ---------------------------------------------------------------------=
-
INFO: Traceback (most recent call last):
  File "/home/alimon/repos/poky/scripts/lib/compatlayer/cases/common.py", l=
ine 65, in test_signatures
    (self.tc.layer['name'], detail))
AssertionError: True is not false : Layer meta-yocto-bsp changed signatures=
.
packagegroup-core-lsb:do_build changed 3a1b91e693c766befca17e00ca69cfe9 -> =
1153f4c44d409486e10a19449981aef7
packagegroup-core-lsb:do_package_write_rpm changed 7fafda279503fb441f957fe8=
8981cbc9 -> 45845055584bad62e1b6d67b12e668bd
packagegroup-core-lsb:do_package changed c312cfe0956cecd9af010de2de09dc89 -=
> 3d00ea36ae703c99c2e8be57ad309a04
meta-world-pkgdata:do_build changed d62a25aedc0adc4ed0832ea20141c4b7 -> e8e=
e6e0e34122c095bc62a26e90be51f
packagegroup-core-lsb:do_packagedata changed 9a63506a1764a11a5177c206839ce8=
ba -> 919b5c641cc779e59bd8df94b50a3d07
packagegroup-core-lsb:do_package_qa changed 53a4bafbdea1fc41098ae48aef584b1=
2 -> babec54733e94d0df008e237927552e7
INFO: ---------------------------------------------------------------------=
-
INFO: Ran 6 tests in 33.636s
INFO:=20
INFO: FAILED (failures=3D2, skipped=3D1)
INFO:=20
INFO: Summary of results:
INFO:=20
INFO: meta-yocto-bsp ... FAIL

--------------010205050607070702050309--

--VCoJ8u0uN0g3qphlPP8aBKebSkVIGOHDc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJYn1ACAAoJEGJqcE9h3glg+RwP/2TGIN4dxd+KNn+E+dYTThzv
54lEJVihzw/AMdRPXdhumCo6ZtvWknhimxtC/krpZpwW9oEppAqB4CMAQm9t1LAe
7AUik0gJCxodbvQ+AH3F+fgAtVcrddFES3wtVGPC93fTiO5cJI+mTzJeLP9FBoZ+
yRqcAvevxTCBx7e58XYDrJUMnbk/VVTWAr7RGQuseW172KM3Yp5v5pj4njywUtRz
yQ+x3ZPUgGLrzgQWWMC5tYhS3lztmaZ3rmCW0Sc+Kf5vCem+m/ymoVykwblX5DL0
aAfye9krSv3Z1o9ChZ1BTfvwTuEhWt9LxM8bgQP72afZbGGcnL7oAz2NWJlenl5L
dICT4Z/4TKfc7Mldb2HiR07jBfedI56+PgqPECDYv9NLcxdFSyzThoKP3idMGs2v
v6JAoBAy753x5OgTnS8kVjeQpUnNOb7k/M+V8afCJJ746uQQqXbhd8TBGCWfhGL/
zCyLLuBJjGFFvp4zTnkwR3YWUMzZJdi/DbHtxNOhDZL8EDky+AKFDwq1jUtqPGOs
aNvdEUI5v0I00L6W+YzsJXkf118UOMPC+QutBAMF+p68/TOmAngNr5m/0DlZthtK
CZL4eYWkHFbGkcC/c8Y/yokLuedjmrEW07goJgxxgig23a7vTnajLn6+bw4f7m1J
26NZhlcmpxMV+0ZunUe6
=et28
-----END PGP SIGNATURE-----

--VCoJ8u0uN0g3qphlPP8aBKebSkVIGOHDc--
