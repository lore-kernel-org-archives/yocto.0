Return-Path: <ncrypticus@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDCBAE00563; Tue,  9 Sep 2014 14:52:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ncrypticus[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90FECE0049D
	for <yocto@yoctoproject.org>; Tue,  9 Sep 2014 14:52:00 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id q58so4364092wes.21
	for <yocto@yoctoproject.org>; Tue, 09 Sep 2014 14:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=z9U1BcnoR86Ds44FDiQggZHIjXRibCq1jLtbrOfAoQE=;
	b=vKZDLzjY492L4Aiy7wl5sx4MA2Gj1qUlfrxvte55tRp7pkiuVuwojFGJ4ETpFwgrI1
	JkngmjL7NDs0iK98PvhOW4iAm/2go4oATc5ib7rN2cGJCa7uuMBC0YK+EQP0LySbklax
	srU8LjpT7MMR36CJm0O2cWQbW6KEd4fuqrPiGP+ckPsCmdWGAT90cl+MpaUIWkFJYt3N
	X37vvuV1DxYYImuH8cl6arJPMNXQKlAtF75w+NcE4mOn693b8jfnee09xDTTJ+pxEyYO
	EEVPt7x1yT35w9QRXXuOimiYITslp8lU3fltVEsndofsO10+TgiGEkC1NlNuLDoLJmUq
	ZIUw==
MIME-Version: 1.0
X-Received: by 10.194.71.11 with SMTP id q11mr43950884wju.33.1410299518529;
	Tue, 09 Sep 2014 14:51:58 -0700 (PDT)
Received: by 10.194.10.202 with HTTP; Tue, 9 Sep 2014 14:51:58 -0700 (PDT)
Date: Tue, 9 Sep 2014 14:51:58 -0700
Message-ID: <CAMSG=xW13=_vydq4ytYT_G2FTz+RH9EoTYpQqf667QO1mb_=pg@mail.gmail.com>
From: Nemicolopterus Crypticus <ncrypticus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: EXTERNALSRC
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
X-List-Received-Date: Tue, 09 Sep 2014 21:52:12 -0000
Content-Type: multipart/alternative; boundary=047d7bf0cf64d4362e0502a8f15a

--047d7bf0cf64d4362e0502a8f15a
Content-Type: text/plain; charset=UTF-8

Following this:
http://www.yoctoproject.org/docs/1.6.1/dev-manual/dev-manual.html#building-software-from-an-external-source

I've got this in my local.conf file:

 INHERIT += "externalsrc"
 EXTERNALSRC_src1 = "${TOPDIR}/../<path to src 1>"
 EXTERNALSRC_BUILD_src1 = "${WORKDIR}/${BPN}/{PV}/"

 EXTERNALSRC_src2 = "${TOPDIR}/../<path to src 2>"
 EXTERNALSRC_BUILD_src2 = "${WORKDIR}/${BPN}/{PV}/"

In the recipe for src2:
   DESCRIPTION = "Builds src2"
   LICENSE     = "license"
   LIC_FILES_CHKSUM = "blah""

   PV = "1.0"
   PR = "r0"

   PACKAGES = "${PN}"

  inherit autotools

  do_install_prepend(){
      echo ${S}
  }

Notice the echo ${S}: I'm expecting that to print out the <path to src2>
but instead it prints out the build directory. During the install step, I
get this error:

ERROR: Logfile of failure stored in:
<path>/oe-core/build/tmp-eglibc/work/path/src2/1.0-r0/temp/log.do_install.12557
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
'arm-linux-gnueabihf', 'common']
| DEBUG: Executing shell function do_install
| <path>/oe-core/build/tmp-eglibc/work/blah/src2/1.0-r0/src2-1.0 <-- build
directory
| NOTE: make -j 8
DESTDIR=<path>/oe-core/build/tmp-eglibc/work/blah/src2/1.0-r0/image install
| make: *** No rule to make target `install'.  Stop.
| ERROR: oe_runmake failed
| WARNING:
/local/mnt/workspace/mollyn/ext-flight/oe-core/build/tmp-eglibc/work/cortexa8hf-vfp-neon-linux-gnueabi/uORB/1.0-r0/temp/run.do_install.12557:1
exit 1 from
|   exit 1
| ERROR: Function failed: do_install (log file is located at
/local/mnt/workspace/mollyn/ext-flight/oe-core/build/tmp-eglibc/work/cortexa8hf-vfp-neon-linux-gnueabi/uORB/1.0-r0/temp/log.do_install.12557)

The build directory (of course) doesn't have the source code with the
Makefile.am in it.

What else do I need to do in order to correctly set the source directory?
The dev manual recommends this:

EXTERNALSRC_pn-myrecipe = "/some/path/to/your/source/tree"


How literal is "pn-myrecipe"? If I have a recipe called "banana.bb",
should I have "EXTERNALSRC_banana-banana.bb" in my local.conf?


Thanks in advance!

--047d7bf0cf64d4362e0502a8f15a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Following this:<div><a href=3D"http://www.yoctoproject.org=
/docs/1.6.1/dev-manual/dev-manual.html#building-software-from-an-external-s=
ource">http://www.yoctoproject.org/docs/1.6.1/dev-manual/dev-manual.html#bu=
ilding-software-from-an-external-source</a><br></div><div><br></div><div>I&=
#39;ve got this in my local.conf file:</div><div><br></div><div><div>=C2=A0=
INHERIT +=3D &quot;externalsrc&quot;</div><div>=C2=A0EXTERNALSRC_src1 =3D &=
quot;${TOPDIR}/../&lt;path to src 1&gt;&quot;</div><div>=C2=A0EXTERNALSRC_B=
UILD_src1 =3D &quot;${WORKDIR}/${BPN}/{PV}/&quot;</div><div>=C2=A0</div><di=
v>=C2=A0EXTERNALSRC_src2 =3D &quot;${TOPDIR}/../&lt;path to src 2&gt;&quot;=
</div><div>=C2=A0EXTERNALSRC_BUILD_src2 =3D &quot;${WORKDIR}/${BPN}/{PV}/&q=
uot;</div></div><div><br></div><div>In the recipe for src2:</div><div><div>=
=C2=A0 =C2=A0DESCRIPTION =3D &quot;Builds src2&quot;</div><div>=C2=A0 =C2=
=A0LICENSE =C2=A0 =C2=A0 =3D &quot;license&quot;</div><div>=C2=A0 =C2=A0LIC=
_FILES_CHKSUM =3D &quot;blah&quot;&quot;</div><div>=C2=A0 =C2=A0</div><div>=
=C2=A0 =C2=A0PV =3D &quot;1.0&quot;</div><div>=C2=A0 =C2=A0PR =3D &quot;r0&=
quot;</div><div>=C2=A0 =C2=A0</div><div>=C2=A0 =C2=A0PACKAGES =3D &quot;${P=
N}&quot;</div><div>=C2=A0 =C2=A0</div><div>=C2=A0 inherit autotools</div><d=
iv>=C2=A0=C2=A0</div><div>=C2=A0 do_install_prepend(){</div><div>=C2=A0 =C2=
=A0 =C2=A0 echo ${S}</div><div>=C2=A0 }</div></div><div><br></div><div>Noti=
ce the echo ${S}: I&#39;m expecting that to print out the &lt;path to src2&=
gt; but instead it prints out the build directory. During the install step,=
 I get this error:</div><div><br></div><div><div>ERROR: Logfile of failure =
stored in: &lt;path&gt;/oe-core/build/tmp-eglibc/work/path/src2/1.0-r0/temp=
/log.do_install.12557</div><div>Log data follows:</div><div>| DEBUG: SITE f=
iles [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-common&#39;, &#39=
;arm-linux-gnueabihf&#39;, &#39;common&#39;]</div><div>| DEBUG: Executing s=
hell function do_install</div><div>| &lt;path&gt;/oe-core/build/tmp-eglibc/=
work/blah/src2/1.0-r0/src2-1.0 &lt;-- build directory</div><div>| NOTE: mak=
e -j 8 DESTDIR=3D&lt;path&gt;/oe-core/build/tmp-eglibc/work/blah/src2/1.0-r=
0/image install</div><div>| make: *** No rule to make target `install&#39;.=
 =C2=A0Stop.</div><div>| ERROR: oe_runmake failed</div><div>| WARNING: /loc=
al/mnt/workspace/mollyn/ext-flight/oe-core/build/tmp-eglibc/work/cortexa8hf=
-vfp-neon-linux-gnueabi/uORB/1.0-r0/temp/run.do_install.12557:1 exit 1 from=
</div><div>| =C2=A0 exit 1</div><div>| ERROR: Function failed: do_install (=
log file is located at /local/mnt/workspace/mollyn/ext-flight/oe-core/build=
/tmp-eglibc/work/cortexa8hf-vfp-neon-linux-gnueabi/uORB/1.0-r0/temp/log.do_=
install.12557)</div></div><div><br></div><div>The build directory (of cours=
e) doesn&#39;t have the source code with the Makefile.am in it.</div><div><=
br>What else do I need to do in order to correctly set the source directory=
?</div><div>The dev manual recommends this:</div><div><pre class=3D"" style=
=3D"overflow:auto;color:rgb(51,51,51)">EXTERNALSRC_pn-myrecipe =3D &quot;/s=
ome/path/to/your/source/tree&quot;</pre><pre class=3D"" style=3D"overflow:a=
uto;color:rgb(51,51,51)"><br></pre><pre class=3D"" style=3D"overflow:auto;c=
olor:rgb(51,51,51)">How literal is &quot;pn-myrecipe&quot;? If I have a rec=
ipe called &quot;<a href=3D"http://banana.bb">banana.bb</a>&quot;, should I=
 have &quot;EXTERNALSRC_banana-banana.bb&quot; in my local.conf?</pre><pre =
class=3D"" style=3D"overflow:auto;color:rgb(51,51,51)"><br></pre><pre class=
=3D"" style=3D"overflow:auto;color:rgb(51,51,51)">Thanks in advance!</pre><=
/div><div><br></div></div>

--047d7bf0cf64d4362e0502a8f15a--
