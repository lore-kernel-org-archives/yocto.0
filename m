Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 134DBE00D2E; Wed, 16 Aug 2017 07:43:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 16 Aug 2017 07:43:30 PDT
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 462F8E00C1A
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 07:43:30 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2G7BADRWJRZ/wUHmMZdGgEBAQECAQEBA?=
	=?us-ascii?q?QgBAQEBgxFJZIEVB54ehAEBjyiEXYISHAiBFYQOAoRDQRYBAgEBAQEBAQEDaB0?=
	=?us-ascii?q?LhAJbVChRARUVFEImAQQbGooOAaBKjQ4iAotKASWCMnaCAoFMiX+DQYIxBYl3h?=
	=?us-ascii?q?xyBZ41LAodSj1eIdoZ9kRuFACYOJIEKdxWHY3aIUwGBDgEBAQ?=
X-IPAS-Result: =?us-ascii?q?A2G7BADRWJRZ/wUHmMZdGgEBAQECAQEBAQgBAQEBgxFJZIE?=
	=?us-ascii?q?VB54ehAEBjyiEXYISHAiBFYQOAoRDQRYBAgEBAQEBAQEDaB0LhAJbVChRARUVF?=
	=?us-ascii?q?EImAQQbGooOAaBKjQ4iAotKASWCMnaCAoFMiX+DQYIxBYl3hxyBZ41LAodSj1e?=
	=?us-ascii?q?IdoZ9kRuFACYOJIEKdxWHY3aIUwGBDgEBAQ?=
X-IronPort-AV: E=Sophos;i="5.41,383,1498536000"; d="scan'208";a="210004186"
Received: from unknown (HELO co300216-co-erhwest.avaya.com) ([198.152.7.5])
	by de307622-de-outbound.net.avaya.com with ESMTP;
	16 Aug 2017 10:42:24 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC02.global.avaya.com) ([135.11.85.13])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	16 Aug 2017 10:42:24 -0400
Received: from AZ-US1EXMB02.global.avaya.com ([fe80::c01d:740:c927:8888]) by
	AZ-US1EXHC02.global.avaya.com ([::1]) with mapi id 14.03.0352.000;
	Wed, 16 Aug 2017 10:42:23 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: NotImplementedError from sanity check
Thread-Index: AdMWnU8KdxrIZPr7SXqR6RUARlJXRg==
Date: Wed, 16 Aug 2017 14:42:22 +0000
Message-ID: <30C2D590D16A5C46ADFE652191037798922773DF@AZ-US1EXMB02.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 10.0.250.9
dlp-reaction: no-action
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
Subject: NotImplementedError from sanity check
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
X-List-Received-Date: Wed, 16 Aug 2017 14:43:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

In the process of transitioning from Fido to Morty.

In the past, when sanity detected a version mismatch with some of
the configuration files (e.g., local.conf, bblayers.conf,) an error message
was displayed.

Now, we see the below, which I do not find very informative or helpful.

Is that a bug or intentional? Is there a way to get back the error message?

MV

ERROR: Execution of event handler 'config_reparse_eventhandler' failed
Traceback (most recent call last):
  File "/home/platform/Workspace/dspgbase/poky/meta/classes/sanity.bbclass"=
, line 1006, in config_reparse_eventhandler(e=3D<bb.event.ConfigParsed obje=
ct at 0x7fc99cba1b00>):
     python config_reparse_eventhandler() {
    >    sanity_check_conffiles(e.data)
     }
  File "/home/platform/Workspace/dspgbase/poky/meta/classes/sanity.bbclass"=
, line 568, in sanity_check_conffiles(d=3D<bb.data_smart.DataSmart object a=
t 0x7fc99d00f198>):
                 except NotImplementedError as e:
    >                bb.fatal(e)
                 d.setVar("BB_INVALIDCONF", True)
  File "/home/platform/Workspace/dspgbase/poky/bitbake/lib/bb/__init__.py",=
 line 103, in fatal:
     def fatal(*args, **kwargs):
    >    mainlogger.critical(''.join(args), extra=3Dkwargs)
         raise BBHandledException()
TypeError: sequence item 0: expected str instance, NotImplementedError foun=
d

ERROR: Error parsing configuration files
Traceback (most recent call last):
  File "/home/platform/Workspace/dspgbase/poky/bitbake/lib/bb/event.py", li=
ne 124, in fire_class_handlers(event=3D<bb.event.ConfigParsed object at 0x7=
fc99cba1b00>, d=3D<bb.data_smart.DataSmart object at 0x7fc99d00f198>):
                         continue
    >            execute_handler(name, handler, event, d)

  File "/home/platform/Workspace/dspgbase/poky/bitbake/lib/bb/event.py", li=
ne 96, in execute_handler(name=3D'config_reparse_eventhandler', handler=3D<=
function config_reparse_eventhandler at 0x7fc99cbd4a60>, event=3D<bb.event.=
ConfigParsed object at 0x7fc99cba1b00>, d=3D<bb.data_smart.DataSmart object=
 at 0x7fc99d00f198>):
         try:
    >        ret =3D handler(event)
         except (bb.parse.SkipRecipe, bb.BBHandledException):
  File "/home/platform/Workspace/dspgbase/poky/meta/classes/sanity.bbclass"=
, line 1006, in config_reparse_eventhandler(e=3D<bb.event.ConfigParsed obje=
ct at 0x7fc99cba1b00>):
     python config_reparse_eventhandler() {
    >    sanity_check_conffiles(e.data)
     }
  File "/home/platform/Workspace/dspgbase/poky/meta/classes/sanity.bbclass"=
, line 568, in sanity_check_conffiles(d=3D<bb.data_smart.DataSmart object a=
t 0x7fc99d00f198>):
                 except NotImplementedError as e:
    >                bb.fatal(e)
                 d.setVar("BB_INVALIDCONF", True)
  File "/home/platform/Workspace/dspgbase/poky/bitbake/lib/bb/__init__.py",=
 line 103, in fatal:
     def fatal(*args, **kwargs):
    >    mainlogger.critical(''.join(args), extra=3Dkwargs)
         raise BBHandledException()
TypeError: sequence item 0: expected str instance, NotImplementedError foun=
d

