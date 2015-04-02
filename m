Return-Path: <afalanga@micron.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21A1FE0095D; Thu,  2 Apr 2015 14:05:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [137.201.242.129 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout.micron.com (mailout.micron.com [137.201.242.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 596EFE0049A
	for <yocto@yoctoproject.org>; Thu,  2 Apr 2015 14:05:03 -0700 (PDT)
Received: from mail.micron.com (ntxboicas01.micron.com [137.201.84.60])
	by mailout.micron.com (8.14.4/8.14.6) with ESMTP id t32L50Hn027290
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 2 Apr 2015 15:05:00 -0600
Received: from NTXBOIMBX02.micron.com ([fe80::75b0:c3aa:18ca:6488]) by
	NTXBOICAS01.micron.com ([2002:89c9:147::89c9:147]) with mapi id
	14.03.0224.002; Thu, 2 Apr 2015 15:05:00 -0600
From: "Andy Falanga (afalanga)" <afalanga@micron.com>
To: Gary Thomas <gary@mlbassoc.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] How to find libraries when building software
Thread-Index: AdBta4sAQhs83g2gTbWUWDPHZJDjpgANVJiA///OcOY=
Date: Thu, 2 Apr 2015 21:04:59 +0000
Message-ID: <60F6FAE47D1BCE4380CC06D18F49789BB9B56A63@NTXBOIMBX02.micron.com>
References: <60F6FAE47D1BCE4380CC06D18F49789BB9B56426@NTXBOIMBX02.micron.com>,
	<551D832F.8040808@mlbassoc.com>
In-Reply-To: <551D832F.8040808@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.201.88.182]
x-tm-as-product-ver: SMEX-10.0.0.4152-7.000.1014-21444.000
x-tm-as-result: No--51.367400-0.000000-31
x-tm-as-user-approved-sender: Yes
x-tm-as-user-blocked-sender: No
x-mt-checkinternalsenderrule: True
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.73 on 137.201.131.43
Subject: Re: How to find libraries when building software
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
X-List-Received-Date: Thu, 02 Apr 2015 21:05:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

______________________________________
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of Gary Thomas [gary@mlbassoc.com]
Sent: Thursday, April 02, 2015 11:58 AM
To: yocto@yoctoproject.org
Subject: Re: [yocto] How to find libraries when building software

On 2015-04-02 11:36, Andy Falanga (afalanga) wrote:
> HI,
>
> Thanks to Gary Thomas' response, I was able to get the python libraries f=
rom Boost built.  Now, when I'm building my own library, which requires lib=
boost_python, the configure script isn't able to find it.  How do I work wi=
th these cross compilation environments?
>
> What I have is this.  I added the line below to local.conf as Gary instru=
cted.
>
> PACKAGECONFIG_pn-boost =3D "python"
>
> I then ran
>
> bitbake core-image-minimal
>
> This built both python and the full set of boost (include libboost_python=
).  I see this in <output_dir>/sysroots/zc706-zynq7/usr/lib.  (In case it's=
 relevant, this environment was constructed using /opt/yocto/poky-dizzy-12.=
0.1/oe-init-build-env.)  I then use a script that a co-worker wrote (quite =
simple) which configures the paths accordingly to use the cross compiler to=
olset.  My path is as follows:
>
> /home/afalanga/src/crisscross/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-=
linux-gnueabi:/home/afalanga/src/crisscross/tmp/sysroots/x86_64-linux/usr/b=
in:/opt/yocto/poky-dizzy-12.0.1/scripts:/opt/yocto/poky-dizzy-12.0.1/bitbak=
e/bin:/opt/petalinux-v2014.4-final/tools/linux-i386/arm-xilinx-linux-gnueab=
i/bin:/opt/petalinux-v2014.4-final/tools/bin:/usr/local/sbin:/usr/local/bin=
:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
>
> In my own library project, I run my configure script with this:
>
> ./configure --host=3Darm-poky-linux-gnueabi
>
> All is working quite well except that I run into this error:
> ...
> checking for Boost headers version >=3D 1.47.0... yes
> checking for Boost's header version... 1_56
> checking for the toolset name used by Boost for arm-poky-linux-gnueabi-g+=
+... gcc49 -gcc
> checking boost/system/error_code.hpp usability... yes
> checking boost/system/error_code.hpp presence... yes
> checking for boost/system/error_code.hpp... yes
> checking for the Boost system library... yes
> checking boost/filesystem/path.hpp usability... yes
> checking boost/filesystem/path.hpp presence... yes
> checking for boost/filesystem/path.hpp... yes
> checking for the Boost filesystem library... (cached) yes
> checking boost/python.hpp usability... no
> checking boost/python.hpp presence... no
> checking for boost/python.hpp... no
> configure: error: cannot find boost/python.hpp
>
> I can find this file in <output_dir>/sysroots/zx706-zinq7/usr/include/boo=
st, why can't the configure script?  What's wrong with how I've done things=
?  Or, and probably much more beneficial, when I say, "--host=3Darm-poky-li=
nux-gnueabi" what does that actually mean?  Where are these things installe=
d?  Why is it saying that it cannot find the header when I can?  The only r=
ational explanation is that it's looking somewhere other than where I am.  =
Thus, I don't understand as much as I should.  What should I read in the ma=
nual?

Another thing to look at is the 'config.log' in your build
(for your "library" recipe).  It should tell you more about
why it can't find boost/python.hpp


I want to ensure I've been clear enough.  I fear I didn=92t explain well
how I'm trying to build my library.  (It's a C++ library exposed in
python.)  I have a standard GNU configure script which I'm trying to use
with the cross compiler that was built.  I'm not using recipes in bitbake
to make this library.

Also, I have been reviewing the config.log file.  It appears to me that
the real problem is that the build cannot find python.h.  This is rather
strange because the file does exist and it's in
.../sysroots/zc706-zynq7/usr/include/python2.7.  I would have assumed that
the automate macro AM_PATH_PYTHON.  At any rate, this does seem to be the
problem.  Curiously, I haven't yet been able to workaround it by supplying
a customized "CPPFLAGS=3D" argument.  I've tried both CPPFLAGS=3D and=20
"BOOST_PYTHON_CPPFLAGS=3D" to the same effect.

Any pointers are most appreciated.

Thanks,
Andy=

