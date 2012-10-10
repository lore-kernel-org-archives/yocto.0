Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12ED7E00717
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 15:35:56 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Oct 2012 15:35:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,567,1344236400"; d="scan'208";a="225309003"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga002.jf.intel.com with ESMTP; 10 Oct 2012 15:35:55 -0700
Received: from orsmsx108.amr.corp.intel.com (10.22.225.41) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 10 Oct 2012 15:35:55 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.116]) by
	ORSMSX108.amr.corp.intel.com ([169.254.9.202]) with mapi id
	14.01.0355.002; Wed, 10 Oct 2012 15:35:55 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Chris Tapp <opensource@keylevel.com>
Thread-Topic: [yocto] Finding root cause of "host include and/or library
	paths	were used"
Thread-Index: AQHNpwdKPvudWy3pg06I0rAjgw+RNJeyycFAgACeuQCAABzSgP//muYg
Date: Wed, 10 Oct 2012 22:35:54 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE2264DCE1D@ORSMSX105.amr.corp.intel.com>
References: <7EB7A8EA-43A7-45A9-8769-8E35AC63DC45@keylevel.com>
	<D956029D25CF204F948EA0FB515E1EE2264DCBE5@ORSMSX105.amr.corp.intel.com>
	<28224C3A-5033-4D63-BB99-976C75EF24A6@keylevel.com>
	<A4740593-AB7E-4221-BEA8-F20CB1CC5337@keylevel.com>
In-Reply-To: <A4740593-AB7E-4221-BEA8-F20CB1CC5337@keylevel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: Finding root cause of "host include and/or library paths	were used"
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 10 Oct 2012 22:35:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Chris Tapp [mailto:opensource@keylevel.com]
>Sent: Wednesday, October 10, 2012 2:34 PM
>To: Bodke, Kishore K
>Cc: yocto@yoctoproject.org Project
>Subject: Re: [yocto] Finding root cause of "host include and/or library pa=
ths
>were used"
>
>
>On 10 Oct 2012, at 20:51, Chris Tapp wrote:
>
>> On 10 Oct 2012, at 18:26, Bodke, Kishore K wrote:
>>
>>>
>>>
>>>> -----Original Message-----
>>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>>> bounces@yoctoproject.org] On Behalf Of Chris Tapp
>>>> Sent: Wednesday, October 10, 2012 9:50 AM
>>>> To: yocto@yoctoproject.org Project
>>>> Subject: [yocto] Finding root cause of "host include and/or library pa=
ths
>were
>>>> used"
>>>>
>>>> I'm trying to get libsdl_gfx to build. I've created a .bb file which r=
uns and
>>>> installs the relevant headers and libs in tmp/sysroots.
>>>>
>>>> However, I'm getting a QA failure:
>>>>
>>>> NOTE: package libsdl-gfx-2.0.24-r1: task do_populate_sysroot: Succeede=
d
>>>> WARNING: libsdl-gfx: The compile log indicates that host include and/o=
r
>library
>>>> paths were used.
>>>>       Please check the log '/media/SSD-RAID/build-denzil-git-sjs-
>>>> cedartrail/tmp/work/core2-sjs-linux/libsdl-gfx-2.0.24-
>>>> r1/temp/log.do_compile' for more information.
>>>>
>>>> The compile log has instances of:
>>>>
>>>> cc1: warning: include location "/usr/include/SDL" is unsafe for cross-
>>>> compilation [-Wpoison-system-directories]
>>>>
>>>> The source uses autotools. I've had a look round the files, but it's n=
ot
>obvious
>>>> to me where the above path is set (I'm definitely not an autotools
>expert).
>>>> Can anyone give me an idea what I should be looking for? I suspect it =
may
>>>> have something to do with a line from Makefile.am:
>>>>
>>>> libSDL_gfxincludedir =3D $(includedir)/SDL
>>>
>>> Did you inherit autotools in your recipe?
>>
>> Yes, that's in there.
>>
>>> You may have to patch your makefile not to use host header files.
>>> Or, I think you can use ${STAGING_INCDIR} to override, at the time of y=
our
>configure.
>>
>> Thanks. Are there any examples I can look at to see how to do this? I've=
 not
>been able to find which file I need to change after 'unpack'.
>
>I seem to have 'fixed' it, but I'm not sure I understand how! I've added:
>
>EXTRA_OECONF =3D "--prefix=3D/any-old-thing"
>
>to the .bb file. No warnings, compile log shows the correct include path:
>
>-I/media/SSD-RAID/build-denzil-git-sjs-cedartrail/tmp/sysroots/cedartrail-
>nopvr/usr/include/SDL

Yeah, EXTRA_OECONF with ${STAGING_INCDIR} would do that I guess,=20
But not exactly sure with the syntax here. =20

You might want to take a look other recipes in poky using this I guess to f=
ind how it is done.

Thanks
Kishore.

