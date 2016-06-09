Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97F6AE00D55; Thu,  9 Jun 2016 09:21:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34D06E00D23
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2016 09:20:58 -0700 (PDT)
Received: by mail-io0-f182.google.com with SMTP id 5so42426952ioy.1
	for <yocto@yoctoproject.org>; Thu, 09 Jun 2016 09:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aezxt1ODtDPaTDhi/8P8sy5okOFSHES677hLBy46BxU=;
	b=k2k1ZO2//9htp0D4gUwtYKpsangkNxyAk0WtZohs7tHJ4lbqDmAHLfODSeyWoBD2k7
	rTG2Ti3N8MZzGitSY0OQIgTlmS4BqSwpox6lalr88kxPie1N4CwPXFzMKpUqyaNo1jiG
	0TwFa7aDgUT4uMzxfo26w2iRocYvqzbe+39maBTkZU0ByFLmshNFKZPsaD7+nTu49SZJ
	Il7RSEdlZpAE9poUbDTh4ndhQTGS9U+2ebDr2SG7NHicxxRKja4McP2m5zLgPZ3TXLJg
	ApAkCUXbvmdl/GVrU95PLvN0VQ8AfnEur2/aK3IPSt34AZ1Es02dQRBS8YnX6C0HSM7N
	02Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aezxt1ODtDPaTDhi/8P8sy5okOFSHES677hLBy46BxU=;
	b=aeeWK83SmK5jpaftdB+SWyLkZTEwRQ6cxLjPQ9Pv1yByJuCwha7QfbZpteiw1kM9JN
	Wd13U7jvj4/l2ZUpFhV8eVS/ft5hgwSRkrXMY9m16Vw4vvzbnMI8W0Kazr3pZknSOv4W
	vqeOO29TDoi/eUmbazvjl7lmKjLrs7chrHQ0woR+GH0vKXwMiNqHprjxtxy+Qhcz79+k
	s362FeQk/GXaHbE7VL4itkJDpflJ+lhPFFV0eUVJvjC36PvUgVVzIRY929reC6mCb/i2
	iSvHT45ajJSyxKmISYe9kta1EB+YyhrrhS4cbZUgmPqyu30WyI6TxRzlIg8ubKLsIED4
	3DcQ==
X-Gm-Message-State: ALyK8tJVC8ilJR3y7r2vJKa7UUgwIIrBtTaptQ9XAR5tZ4V5wVp2Rrjhf094S7f6aaIrukI+REnw67QSmZS9c9DF
X-Received: by 10.107.179.9 with SMTP id c9mr17847181iof.99.1465489258465;
	Thu, 09 Jun 2016 09:20:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Thu, 9 Jun 2016 09:20:39 -0700 (PDT)
In-Reply-To: <OF23BF867D.425FC638-ONC1257FCD.004F586E-C1257FCD.0051B840@esa-grimma.de>
References: <OF23BF867D.425FC638-ONC1257FCD.004F586E-C1257FCD.0051B840@esa-grimma.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 9 Jun 2016 17:20:39 +0100
Message-ID: <CAJTo0Lb5uKs9VXwaLJOadS4oVyAqjqz65pad6Ngi0fa68caC_g@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: License problems when switching form RPM to DEB - looking for a easy way to fix it
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
X-List-Received-Date: Thu, 09 Jun 2016 16:21:01 -0000
Content-Type: multipart/alternative; boundary=001a11485762ac63ae0534dace7a

--001a11485762ac63ae0534dace7a
Content-Type: text/plain; charset=UTF-8

On 9 June 2016 at 15:52, <S.Jaritz@esa-grimma.de> wrote:

> I switched from RPM to DEB because the board configuration should be
> handled by a package manager. By doing so I ran into a QA problem. All the
> software provided by my colleagues I maked with


Note that deb is the least-tested package manager, we generally recommend
rpm or opkg over deb.  If you switched to deb because of the size of the
tools on the target compared to rpm (as smart pulls in Python, it's not
small) then you'll really like opkg.


> LICENSE = "CLOSED"
>
> because they do not provide a license file. This works fine with the rpm
> generator, but when I use the debian generator - the QA from the
> "do_rootfs" fails with:

[snip]

Very interesting, and I have seen this occasionally.  Does deleting your
tmp/ and rebuilding from sstate solve this?

Ross

--001a11485762ac63ae0534dace7a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 June 2016 at 15:52,  <span dir=3D"ltr">&lt;<a href=3D"mailto:S.Jaritz@=
esa-grimma.de" target=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><font size=3D"2" face=3D"sans-serif">I=
 switched from RPM to DEB because the
board configuration should be handled by a package manager. By doing so
I ran into a QA problem. All the software provided by my colleagues I maked
with </font></blockquote><div><br></div><div>Note that deb is the least-tes=
ted package manager, we generally recommend rpm or opkg over deb.=C2=A0 If =
you switched to deb because of the size of the tools on the target compared=
 to rpm (as smart pulls in Python, it&#39;s not small) then you&#39;ll real=
ly like opkg.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><font si=
ze=3D"2" face=3D"sans-serif">LICENSE =3D &quot;CLOSED&quot;</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">because they do not provide a lice=
nse
file. This works fine with the rpm generator, but when I use the debian
generator - the QA from the &quot;do_rootfs&quot; fails with:</font>
</blockquote></div>[snip]</div><div class=3D"gmail_extra"><br></div><div cl=
ass=3D"gmail_extra">Very interesting, and I have seen this occasionally.=C2=
=A0 Does deleting your tmp/ and rebuilding from sstate solve this?</div><di=
v class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div><div=
 class=3D"gmail_extra"><br></div></div>

--001a11485762ac63ae0534dace7a--
