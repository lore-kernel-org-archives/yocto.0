Return-Path: <bachehkaraji@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6ADE2E00D14; Wed, 25 Oct 2017 00:31:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_MUA_MOZILLA, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bachehkaraji[at]yahoo.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.6.129.41 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.6.129.41 listed in list.dnswl.org]
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic301-2.consmr.mail.bf2.yahoo.com
	(sonic301-2.consmr.mail.bf2.yahoo.com [74.6.129.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60B6EE00D0E
	for <yocto@yoctoproject.org>; Wed, 25 Oct 2017 00:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1508916664; bh=rASCbG0XuS3VG+KKSVxwFILP6aA7KO41jiSskSqtUn8=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=DpK4XIvwUGwdqrqevZ/iOp6ogHIllkYy7ihj22i+vfSXJzRj0t4/d2ft+pyA8UqFR6TsTrgBGh0UV48NeQwlhxfnLW9L9BMe0qhpPf6zJNV4/T3f+nme9WJJ0N3vpP6GLpoHPNAhN1eOR+4SBKUvKn+LHqDCzPG6/h8XXABCf2sEKe2jhGa1Fd1tATktMx2QzC16w/8lqFNJP2QdpbBnK6ZBVn8Zla8Llmb81sRPzIz5TGy2WODH39vq7OZHZ5uon51eDEEigxrm1nsxSOCFnVm4Pd+oImbLmJXVDvWBSz7aDRPF1iX+RlSX0Wt2yClYCLpEWh8V+BOdsSCYLx/NqQ==
X-YMail-OSG: idGnh40VM1nvicOU43fufnAPc4s3Ygrs.VlEGtIpM7Dn0eBeCbsEI6oPSNb4JmJ
	BbANsO5LgFZk7FqP7NdiYQoDt3ND9GeFLgpTXaskqRolqiez.6YfBD9iy2yPtL9442GQ5b_FVOZP
	u7HGhRdJ6sF2iB0IBAEth1syL3fdh4Rt5FiZDzf4jUaQe_5hFNnwOKSzZ1GcK8RWas4Zss2f6jQU
	LUziP5OP6zXJJZnoVesSTNPystDBJ6i6TAKzCbIdWOU4W8CqVxxyt5Gre984rDCictRy1l_JKBDZ
	Cuj8n3oXkGmEwt7kAZhpjGAZdhzNnBA8b8jS64.3_IzR0v6NjYL3K0jU3EiGiv_hrECo.dMb9ALx
	AlYUlble7UQVbRVSZZeaUJlRPRssRi2Jc5TIGZH96ZAcU33eQ4fbPDdaqYhq4MsAJ__U6U.EoidE
	drArxlFKR3btESWuGDMJ.j6oUIU2sSNNh9W1Vw4QB5V_1bHXJJR3v52ao
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic301.consmr.mail.bf2.yahoo.com with HTTP;
	Wed, 25 Oct 2017 07:31:04 +0000
Date: Wed, 25 Oct 2017 07:30:59 +0000 (UTC)
From: Bacheh Karaji <bachehkaraji@yahoo.com>
To: ChenQi <Qi.Chen@windriver.com>, Yocto Project <yocto@yoctoproject.org>
Message-ID: <1238322512.4335294.1508916659303@mail.yahoo.com>
In-Reply-To: <646e07c5-824a-1c4f-7643-6d41c17d8b72@windriver.com>
References: <886279436.3600717.1508846299490.ref@mail.yahoo.com>
	<886279436.3600717.1508846299490@mail.yahoo.com>
	<646e07c5-824a-1c4f-7643-6d41c17d8b72@windriver.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.10801 YahooMailNeo Mozilla/5.0 (Windows NT 6.1; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100
	Safari/537.36
Subject: Re: How /etc/shadow packed into my final image?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Bacheh Karaji <bachehkaraji@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 25 Oct 2017 07:31:06 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_4335293_398956572.1508916659301"

------=_Part_4335293_398956572.1508916659301
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


OH! Thank you! I had forgotten about that.

=20

    On Wednesday, October 25, 2017 6:22 AM, ChenQi <Qi.Chen@windriver.com> =
wrote:
=20

  On 10/24/2017 07:58 PM, Bacheh Karaji wrote:
 =20
=20
 Hi,=20
  I wanted to modify the content of /etc/shadow, but don't know how=C2=A0/e=
tc/shadow files is packed into final image.=20
  Can anybody how it is packed and way to modify it? Thanks=20
=20
 =20
 =20
=20
 The file is created in postinst of the shadow package.
=20
 Codes are like below:
 root@qemux86-64:~# rpm -q --scripts shadow
 postinstall scriptlet (using /bin/sh):
 # shadow - postinst
 =C2=A0=C2=A0=C2=A0 if [ "x$D" !=3D "x" ]; then
 =C2=A0=C2=A0=C2=A0 =C2=A0 rootarg=3D"--root $D"
 =C2=A0=C2=A0=C2=A0 else
 =C2=A0=C2=A0=C2=A0 =C2=A0 rootarg=3D""
 =C2=A0=C2=A0=C2=A0 fi
=20
 =C2=A0=C2=A0=C2=A0 pwconv $rootarg || exit 1
 =C2=A0=C2=A0=C2=A0 grpconv $rootarg || exit 1
 [snip]
=20
 There are several ways to modify the file, depending on your purpose.
 If you just want to modify/add/delete user/group in recipe, please try to =
make use of useradd*.bbclass.
http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.html#ref-cla=
sses-useradd
=20
 If you want to do user/group operation in conf file, please try to make us=
e of extrausers.bbclass.
http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.html#ref-cla=
sses-extrausers
=20
 The above should be basically enough.
=20
 Best Regards,
 Chen Qi
=20
=20

  =20

------=_Part_4335293_398956572.1508916659301
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font=
-size:10px"><h3 style=3D"margin-top: 0px; margin-bottom: 0px; overflow: hid=
den; text-overflow: ellipsis;" id=3D"yui_3_16_0_ym19_1_1508916566009_2665">=
<font color=3D"#222222" id=3D"yui_3_16_0_ym19_1_1508916566009_2725" face=3D=
"HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif=
" size=3D"3"><span style=3D"font-weight: normal; white-space: nowrap;" id=
=3D"yui_3_16_0_ym19_1_1508916566009_2726">OH! Thank you! I had forgotten ab=
out that.</span></font><br></h3> <div class=3D"qtdSeparateBR"><br><br></div=
><div class=3D"yahoo_quoted" style=3D"display: block;"> <div style=3D"font-=
family: Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-s=
ize: 10px;"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helv=
etica, Arial, Lucida Grande, sans-serif; font-size: 16px;"> <div dir=3D"ltr=
"><font size=3D"2" face=3D"Arial"> On Wednesday, October 25, 2017 6:22 AM, =
ChenQi &lt;Qi.Chen@windriver.com&gt; wrote:<br></font></div>  <br><br> <div=
 class=3D"y_msg_container"><div id=3D"yiv8017060503"><div class=3D"yiv80170=
60503yqt8391252717" id=3D"yiv8017060503yqt49268"><div>
    <div class=3D"yiv8017060503moz-cite-prefix">On 10/24/2017 07:58 PM, Bac=
heh Karaji
      wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div><div><div style=3D"font-family:Helvetica Neue, Hel=
vetica, Arial, sans-serif;font-size:10px;">
        <div><font size=3D"3">Hi,</font></div>
        <div><font size=3D"3"><br clear=3D"none">
          </font></div>
        <div><font size=3D"3">I wanted to modify the content of
            /etc/shadow,</font></div>
        <div><font size=3D"3">but don't know how&nbsp;</font><span style=3D=
"font-size:medium;">/etc/shadow files is packed into
            final image.</span></div>
        <div><font size=3D"3"><br clear=3D"none">
          </font></div>
        <div><font size=3D"3">Can anybody how it is packed and way to
            modify it?</font></div>
        <div><font size=3D"3">Thanks</font></div>
        <br clear=3D"none">
        <br clear=3D"none">
      </div>
      <br clear=3D"none">
      <fieldset class=3D"yiv8017060503mimeAttachmentHeader"></fieldset>
      <br clear=3D"none">
   =20
    <br clear=3D"none">
    The file is created in postinst of the shadow package.<br clear=3D"none=
">
    <br clear=3D"none">
    Codes are like below:<br clear=3D"none">
    root@qemux86-64:~# rpm -q --scripts shadow<br clear=3D"none">
    postinstall scriptlet (using /bin/sh):<br clear=3D"none">
    # shadow - postinst<br clear=3D"none">
    &nbsp;&nbsp;&nbsp; if [ "x$D" !=3D "x" ]; then<br clear=3D"none">
    &nbsp;&nbsp;&nbsp; &nbsp; rootarg=3D"--root $D"<br clear=3D"none">
    &nbsp;&nbsp;&nbsp; else<br clear=3D"none">
    &nbsp;&nbsp;&nbsp; &nbsp; rootarg=3D""<br clear=3D"none">
    &nbsp;&nbsp;&nbsp; fi<br clear=3D"none">
    <br clear=3D"none">
    &nbsp;&nbsp;&nbsp; pwconv $rootarg || exit 1<br clear=3D"none">
    &nbsp;&nbsp;&nbsp; grpconv $rootarg || exit 1<br clear=3D"none">
    [snip]<br clear=3D"none">
    <br clear=3D"none">
    There are several ways to modify the file, depending on your
    purpose.<br clear=3D"none">
    If you just want to modify/add/delete user/group in recipe, please
    try to make use of useradd*.bbclass.<br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" class=3D"yiv8017060503moz-txt-link-freet=
ext" target=3D"_blank" href=3D"http://www.yoctoproject.org/docs/2.3.2/mega-=
manual/mega-manual.html#ref-classes-useradd">http://www.yoctoproject.org/do=
cs/2.3.2/mega-manual/mega-manual.html#ref-classes-useradd</a><br clear=3D"n=
one">
    <br clear=3D"none">
    If you want to do user/group operation in conf file, please try to
    make use of extrausers.bbclass.<br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" class=3D"yiv8017060503moz-txt-link-freet=
ext" target=3D"_blank" href=3D"http://www.yoctoproject.org/docs/2.3.2/mega-=
manual/mega-manual.html#ref-classes-extrausers">http://www.yoctoproject.org=
/docs/2.3.2/mega-manual/mega-manual.html#ref-classes-extrausers</a><br clea=
r=3D"none">
    <br clear=3D"none">
    The above should be basically enough.<br clear=3D"none">
    <br clear=3D"none">
    Best Regards,<br clear=3D"none">
    Chen Qi<br clear=3D"none">
    <br clear=3D"none">
  </div></div></div><br><br></div>  </div> </div>  </div></div></body></htm=
l>

------=_Part_4335293_398956572.1508916659301--
