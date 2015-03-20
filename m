Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 548EEE00779; Fri, 20 Mar 2015 01:24:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8999E0076B;
	Fri, 20 Mar 2015 01:24:06 -0700 (PDT)
Received: by pdbni2 with SMTP id ni2so102284145pdb.1;
	Fri, 20 Mar 2015 01:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=BV1YP0oB9TZjDi7L99/o+p6jF5eEGE+9aQROgHRn4XM=;
	b=vibTpSSIMOVyHd1Bl3Sg7wCXRhwlEE7EL5k0Hu/yoVK2xPutSUjkaQE6G9eBk1Z1AP
	H5+oTjv7cD9z8GMOZ8+nHSOJnICSGkSvTmSYQETV843Znw2/spYHf1Yt0uj845P4CbGc
	k3+SHpqOpXNmYmRJbB2HTfqVySEuFB9tiLUryxYvNIG8ohqglJucKHicKMBWhEQpnInL
	g4k9LBa27E0QV+6aSWuoRFpEAMkVaPk1/CBBsPR8S2f/Pnf4IcE/J51wF0vIufmZ5sTl
	7D+/RZRi5nzPS9JN81rpePwBC+SdsKwwmj1uT0iu6Z0ZfnI96mEX68aCexrRP4cFpzwi
	5Zkw==
X-Received: by 10.66.142.228 with SMTP id rz4mr186770942pab.86.1426839846112; 
	Fri, 20 Mar 2015 01:24:06 -0700 (PDT)
Received: from [192.168.0.13] (c-76-103-142-85.hsd1.ca.comcast.net.
	[76.103.142.85])
	by mx.google.com with ESMTPSA id x4sm6776298pas.40.2015.03.20.01.24.04
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 20 Mar 2015 01:24:05 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CALTPfpG=osbJr7Bs6xOWeMjToobKkWpPXDjyG_BEzzHtT=Pi3w@mail.gmail.com>
Date: Fri, 20 Mar 2015 01:24:03 -0700
Message-Id: <32E172B3-DC71-4FA6-A5AE-95F29CA69089@gmail.com>
References: <CALTPfpGcuSDbWjqqmmAn8mG0nwRg=gGJePiWLs7U9A8FSn_5DQ@mail.gmail.com>
	<CALTPfpEioQubDTeBdE6yoVff1_hVu4G7LDqx3On1uGraQTHi1g@mail.gmail.com>
	<4A18F97D-CBE3-4D8E-9242-7A0774D2DD4B@gmail.com>
	<CALTPfpFd+jVRtCEnkf0HK9LfjXwu3wYxtpStXWGwtE_8chbZFg@mail.gmail.com>
	<CALTPfpG=osbJr7Bs6xOWeMjToobKkWpPXDjyG_BEzzHtT=Pi3w@mail.gmail.com>
To: Priya Agarwal <priya_agarwal@students.iitmandi.ac.in>
X-Mailer: Apple Mail (2.2070.6)
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto-builds@yoctoproject.org" <yocto-builds@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] Including Static Libraries from sysroot in an autotools based package
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
X-List-Received-Date: Fri, 20 Mar 2015 08:24:12 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_D3EB6802-7A6D-4241-B920-958F40F6D9FA"

--Apple-Mail=_D3EB6802-7A6D-4241-B920-958F40F6D9FA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Mar 20, 2015, at 1:09 AM, Priya Agarwal =
<priya_agarwal@students.iitmandi.ac.in> wrote:
>=20
> Hello,
>=20
> Sorry to ask this question but I am unable to find any answer in =
reference manuals.
> ${CC} is a c compiler. For c++ is it ${CXX} or something else.

Yes, you can always do bitbake -e <somepackage>  | grep -e =E2=80=9C^CXX=3D=
=E2=80=9C
and figure out various variables that you want to evaluate

>=20
> Thanks.
>=20
> On Fri, Mar 20, 2015 at 9:07 AM, Priya Agarwal =
<priya_agarwal@students.iitmandi.ac.in =
<mailto:priya_agarwal@students.iitmandi.ac.in>> wrote:
> I have edited the Makefile.am as well in this way:
>=20
> squid_LDADD +=3D -lusdpaa_of
>=20
> Then I just retarred squid code and build it again.
>=20
> And The libraries are shown in the compile command as well, when I see =
the log.do_compile generated during the build.
> Check Line number 403 in this pastebin link. (ctrl+F 'usdpaa_of' could =
show where all it occurs). http://pastebin.com/LpaymTQa =
<http://pastebin.com/LpaymTQa>
> So how is it possible they are not actually linked.
> I even checked the OVERRIDE variable in bitbake.conf which is set =
correctly.=20
> I really need to link this library. :/
>=20
> On Fri, Mar 20, 2015 at 8:43 AM, Khem Raj <raj.khem@gmail.com =
<mailto:raj.khem@gmail.com>> wrote:
>=20
>> On Mar 19, 2015, at 2:07 AM, Priya Agarwal =
<priya_agarwal@students.iitmandi.ac.in =
<mailto:priya_agarwal@students.iitmandi.ac.in>> wrote:
>>=20
>> Hi,
>>=20
>> I need to link some libraries which are in sysroot into my source =
code. These are usdpaa libraries.
>>=20
>> I added DEPENDS +=3D "usdpaa" in .bb file.
>> Apart from that also changed the Makefile.am of my source to include =
the following:
>> area_LDADD =3D -lusdpaa_of
>> Then I ran aclocal, autoconf, automake --add-missing and retarred my =
package.
>>=20
>> When the package is being built from recipe, do_compile fails. It =
shows "undefined reference to" error.
>> So this means that libraries are not getting linked by just doing the =
above changes. What else I need to change?
>=20
> I think you need to specify them in Makefile.am using LDADD since it =
is using auto tools. Please take a look at Automake documentation
> http://www.gnu.org/software/automake/manual/html_node/Linking.html =
<http://www.gnu.org/software/automake/manual/html_node/Linking.html>
> might be helpful.
>=20
>>=20
>> I think this problem is specific to autotools based projects as when =
I include the libraries during the gcc command they are easily included.
>>=20
>> do_compile() {
>>     ${CC} check.c -o check -lusdpaa_of
>> }
>> link to area.bb <http://area.bb/>
>> http://pastebin.com/Bef2C7nX <http://pastebin.com/Bef2C7nX>--=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
>=20
>=20
> --
> _______________________________________________
> meta-freescale mailing list
> meta-freescale@yoctoproject.org =
<mailto:meta-freescale@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/meta-freescale =
<https://lists.yoctoproject.org/listinfo/meta-freescale>
>=20
>=20
>=20


--Apple-Mail=_D3EB6802-7A6D-4241-B920-958F40F6D9FA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Mar 20, 2015, at 1:09 AM, Priya Agarwal &lt;<a =
href=3D"mailto:priya_agarwal@students.iitmandi.ac.in" =
class=3D"">priya_agarwal@students.iitmandi.ac.in</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D""><div class=3D""><div class=3D"">Hello,<br =
class=3D""><br class=3D""></div>Sorry to ask this question but I am =
unable to find any answer in reference manuals.<br class=3D""></div>${CC} =
is a c compiler. For c++ is it ${CXX} or something else.<br =
class=3D""></div></div></div></blockquote><div><br =
class=3D""></div><div>Yes, you can always do bitbake -e =
&lt;somepackage&gt; &nbsp;| grep -e =E2=80=9C^CXX=3D=E2=80=9C</div><div>an=
d figure out various variables that you want to evaluate</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D""><br =
class=3D""></div>Thanks.</div><div class=3D"gmail_extra"><br =
class=3D""><div class=3D"gmail_quote">On Fri, Mar 20, 2015 at 9:07 AM, =
Priya Agarwal <span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:priya_agarwal@students.iitmandi.ac.in" target=3D"_blank" =
class=3D"">priya_agarwal@students.iitmandi.ac.in</a>&gt;</span> =
wrote:<br class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr" =
class=3D""><div class=3D""><div class=3D""><div class=3D""><div =
class=3D""><div class=3D""><div class=3D""><div class=3D"">I have edited =
the Makefile.am as well in this way:<br class=3D""><br =
class=3D""></div>squid_LDADD +=3D -lusdpaa_of<br class=3D""><br =
class=3D""></div>Then I just retarred squid code and build it again.<br =
class=3D""><br class=3D"">And The libraries are shown in the compile =
command as well, when I see the log.do_compile generated during the =
build.<br class=3D""></div>Check Line number 403 in this pastebin link. =
(ctrl+F 'usdpaa_of' could show where all it occurs). <a =
href=3D"http://pastebin.com/LpaymTQa" target=3D"_blank" =
class=3D"">http://pastebin.com/LpaymTQa</a><br class=3D""></div>So how =
is it possible they are not actually linked.<br class=3D""></div>I even =
checked the OVERRIDE variable in bitbake.conf which is set correctly. =
<br class=3D""></div>I really need to link this library. :/<br =
class=3D""></div></div><div class=3D"gmail_extra"><br class=3D""><div =
class=3D"gmail_quote"><div class=3D""><div class=3D"h5">On Fri, Mar 20, =
2015 at 8:43 AM, Khem Raj <span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" =
class=3D"">raj.khem@gmail.com</a>&gt;</span> wrote:<br =
class=3D""></div></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
class=3D""><div class=3D"h5"><div style=3D"word-wrap:break-word" =
class=3D""><br class=3D""><div class=3D""><span class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D"">On Mar 19, 2015, at 2:07 AM, =
Priya Agarwal &lt;<a href=3D"mailto:priya_agarwal@students.iitmandi.ac.in"=
 target=3D"_blank" =
class=3D"">priya_agarwal@students.iitmandi.ac.in</a>&gt; wrote:</div><br =
class=3D""><div class=3D""><div dir=3D"ltr" class=3D""><div =
class=3D""><div class=3D"">Hi,<br class=3D""><br class=3D""></div>I need =
to link some libraries which are in sysroot into my source code. These =
are usdpaa libraries.<br class=3D""><br class=3D""></div><div class=3D"">I=
 added DEPENDS +=3D "usdpaa" in .bb file.<br class=3D"">Apart from that =
also changed the Makefile.am of my source to include the following:<br =
class=3D""></div><div style=3D"margin-left:40px" class=3D"">area_LDADD =3D=
 -lusdpaa_of<br class=3D""></div><div class=3D"">Then I ran aclocal, =
autoconf, automake --add-missing and retarred my package.<br =
class=3D""><br class=3D""></div><div class=3D"">When the package is =
being built from recipe, do_compile fails. It shows "undefined reference =
to" error.<br class=3D""></div>So this means that libraries are not =
getting linked by just doing the above changes. What else I need to =
change?<br class=3D""></div></div></blockquote><div class=3D""><br =
class=3D""></div></span><div class=3D"">I think you need to specify them =
in Makefile.am using LDADD since it is using auto tools. Please take a =
look at Automake documentation</div><div class=3D""><a =
href=3D"http://www.gnu.org/software/automake/manual/html_node/Linking.html=
" target=3D"_blank" =
class=3D"">http://www.gnu.org/software/automake/manual/html_node/Linking.h=
tml</a></div><div class=3D"">might be helpful.</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><span =
class=3D""><div dir=3D"ltr" class=3D""><br class=3D"">I
 think this problem is specific to autotools based projects as when I=20
include the libraries during the gcc command they are easily =
included.<br class=3D""><div style=3D"margin-left:40px" class=3D""><br =
class=3D"">do_compile() {<br class=3D"">&nbsp;&nbsp;&nbsp; ${CC} check.c =
-o check -lusdpaa_of<br class=3D"">}<br class=3D""></div>link to <a =
href=3D"http://area.bb/" target=3D"_blank" class=3D"">area.bb</a><br =
class=3D""><a href=3D"http://pastebin.com/Bef2C7nX" target=3D"_blank" =
class=3D"">http://pastebin.com/Bef2C7nX</a></div></span><span =
class=3D""><font color=3D"#888888" class=3D"">
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" =
class=3D"">yocto@yoctoproject.org</a><br class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a><br =
class=3D""></font></span></div></blockquote></div><br class=3D""></div><br=
 class=3D""></div></div><span class=3D"HOEnZb"><font color=3D"#888888" =
class=3D"">--<br class=3D"">
_______________________________________________<br class=3D"">
meta-freescale mailing list<br class=3D"">
<a href=3D"mailto:meta-freescale@yoctoproject.org" target=3D"_blank" =
class=3D"">meta-freescale@yoctoproject.org</a><br class=3D"">
<a href=3D"https://lists.yoctoproject.org/listinfo/meta-freescale" =
target=3D"_blank" =
class=3D"">https://lists.yoctoproject.org/listinfo/meta-freescale</a><br =
class=3D"">
<br class=3D""></font></span></blockquote></div><br class=3D""></div>
</blockquote></div><br class=3D""></div>
</div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_D3EB6802-7A6D-4241-B920-958F40F6D9FA--
