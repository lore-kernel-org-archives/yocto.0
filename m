Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B026E00D12; Tue, 13 Sep 2016 02:59:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7828E00B30
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 02:59:09 -0700 (PDT)
Received: by mail-it0-f51.google.com with SMTP id n143so29702043ita.1
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 02:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Ix48LCK5waZSqKuAIBWTCqhlDeIGedzj5N8cegON84M=;
	b=KmE/WHeyJWFMxcbaTtk8y+r5T7Ol6zn+8IIdwpe2PokQNEpHec7fILWXwrWhzcXupB
	HHQfzipi/5x8Zkh9nz/y/a/7zVeBrtQC0ySR8z4ZTycq448uhpC4bjwzeUCTZEywi3GU
	ilOmFTY4ebCO2Z6xUhtQTelGgA2B/jS3Qmq2C3in5l90BpJpJEcJ0Xppfpm9InZ9WGmW
	A76ZZu+5AYqv9h5J/TYSHXBCzIiEemObvG+/eU5mzK8k1mNrX0Nm80Rgb4iG2gPS7uV5
	lgLvP/4YnbNrQQhH02cUKZKJVgaOx+11zC+zD5nw9QPq2yjOprN0iSwCj4rNjkzWVshh
	bO2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Ix48LCK5waZSqKuAIBWTCqhlDeIGedzj5N8cegON84M=;
	b=Su//0WxR/VUfqqHiHASPw9DGci8MNPdLuZpgzHV41zpKaGEWn9gJAcmQyImPbsQqpN
	nh0/Tlp/uBl8owIQsvdN6h8AUqVuluDTnN00iDyrvH23FBYa7KaeZUKTxmoQKT1Jd3Po
	CBu2Sow8xUX0y5QG5XsenAi2f4godBQHb5rpV+yE5NNk5UZNpjRxp6alJFxONKjvyy3M
	AYEU7s3WpPfJyShW9/jIJO2scYpgTxbgotz6gq2HBLVsI2bGucEMss5xwKcnLAsBVNgr
	6cXnqGjvxJQizQcdbjIDD1ww2ijm6zHDjzp2bPjhv+q4ZNwKc31Gz1Tr+GqqIY7F4C84
	UViQ==
X-Gm-Message-State: AE9vXwP2N06Uk5wJHGEpNE9v8+fd+iKOJGzf1lvE37U0TbXCGSrZN8EEXqPRHI60vrnabr2/4vNO9fZnJxyEJlu2
X-Received: by 10.107.176.144 with SMTP id z138mr767682ioe.133.1473760749137; 
	Tue, 13 Sep 2016 02:59:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.27 with HTTP; Tue, 13 Sep 2016 02:58:48 -0700 (PDT)
In-Reply-To: <OFE21B4224.870E1AD3-ONC125802D.0024F863-C125802D.002731A6@esa-grimma.de>
References: <OFE21B4224.870E1AD3-ONC125802D.0024F863-C125802D.002731A6@esa-grimma.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 13 Sep 2016 10:58:48 +0100
Message-ID: <CAJTo0LYBXyfDKAffd0VNNO+yCjR6nD=ua6mmSD6VPzUd9mQm+A@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: How to extract an archive in a git repostry and copy it to a defined position in the rootfs?
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
X-List-Received-Date: Tue, 13 Sep 2016 09:59:14 -0000
Content-Type: multipart/alternative; boundary=001a11438ad4eff5c8053c60a930

--001a11438ad4eff5c8053c60a930
Content-Type: text/plain; charset=UTF-8

On 13 September 2016 at 08:08, <S.Jaritz@esa-grimma.de> wrote:
>
> ??? do_fetch_append () {
> ???        extract ${S}/example.tar.gz
> ??? }


> ??? do_install () {
> ???        copy ${S}/ ${D}/opt/
> ??? }


It's a tarball so use "tar" to extract, and you'll need to mkdir ${D}/opt
before copying. but that's barely just pseudocode.

The only gotcha is that do_fetch() is a Python function so you can't just
append shell code.  Simply move the extract into do_install().

Ross

--001a11438ad4eff5c8053c60a930
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 September 2016 at 08:08,  <span dir=3D"ltr">&lt;<a href=3D"mailto:S.J=
aritz@esa-grimma.de" target=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;</span=
> wrote:<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><font size=3D"2" face=3D"sans-serif"=
>??? do_fetch_append () {</font>
<br><font size=3D"2" face=3D"sans-serif">??? =C2=A0 =C2=A0 =C2=A0 =C2=A0ext=
ract
${S}/example.tar.gz</font>
<br><font size=3D"2" face=3D"sans-serif">??? }</font>=C2=A0=C2=A0</blockquo=
te><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">
<br><font size=3D"2" face=3D"sans-serif">??? do_install () {</font>
<br><font size=3D"2" face=3D"sans-serif">??? =C2=A0 =C2=A0 =C2=A0 =C2=A0cop=
y
${S}/ ${D}/opt/</font>
<br><font size=3D"2" face=3D"sans-serif">??? }</font>
</blockquote></div><br>It&#39;s a tarball so use &quot;tar&quot; to extract=
, and you&#39;ll need to mkdir ${D}/opt before copying. but that&#39;s bare=
ly just pseudocode.</div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">The only gotcha is that do_fetch() is a Python function so yo=
u can&#39;t just append shell code.=C2=A0 Simply move the extract into do_i=
nstall().</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ext=
ra">Ross</div></div>

--001a11438ad4eff5c8053c60a930--
