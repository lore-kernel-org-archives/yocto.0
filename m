Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2286.1577190689752065309
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Dec 2019 04:31:30 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@iwavesystems.com header.s=default header.b=oRPWkMbm;
 spf=permerror, err=parse error for token &{10 18 _spf.mailspamprotection.com}: parse error for token &{10 18 _nb5.mailspamprotection.com}: limit exceeded (domain: iwavesystems.com, ip: 140.211.169.56, mailfrom: sheraz.ali@iwavesystems.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DB67E011A6; Tue, 24 Dec 2019 04:31:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from c57603.sgvps.net (c57603.sgvps.net [109.199.122.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74CFEE003E1
	for <yocto@yoctoproject.org>; Tue, 24 Dec 2019 04:31:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=iwavesystems.com; s=default; h=Content-Type:MIME-Version:Date:Message-ID:
	Subject:From:To:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=b9pNN0M31St+amSaT8r2X3JahjGXNV1bw9+gutYt5cA=; b=oRPWkMbmdA5mUPMMj2gqLNLGMH
	EP0NTy8W44iXBjony7t+YiyeMI3FzJ+fzvU50I37YH8xcZUHZ1FLSKbsBz4nALyNhVW2I/iaH8Rxe
	fC9ewdmdrF+MF7sIKjcnv5/ylHbY452ZSI+ScHiroFvvTCi7qR3AkKhpStlbV7TqJERssXAetsBPo
	oXE8CalopYpywlIX1YtrXz/NBj2xNPhOzWHcBZ1XEYmX3iZawXqd05/gw7ib6LAst4Q2QGhYlSPOB
	Rsof909KjHTd7SL4zanG7wRyQYXfdXpZ7oJ0X/u80cttslH/hYk1sS+eAUJz1PitHvq5KSev9kWMO
	KHzqfg5A==;
Received: from [124.124.219.230] (port=9177 helo=[192.168.1.131])
	by c57603.sgvps.net with esmtpsa  tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.90devstart-1178-b07e68e5-XX)
	(envelope-from <sheraz.ali@iwavesystems.com>)
	id 1ijjLT-000DsD-E3
	for yocto@yoctoproject.org; Tue, 24 Dec 2019 06:31:27 -0600
To: Yocto <yocto@yoctoproject.org>
From: "Sheraz Ali" <sheraz.ali@iwavesystems.com>
Subject: building vlc
Message-ID: <bd578e85-f9f0-51c4-052f-eca47d95b508@iwavesystems.com>
Date: Tue, 24 Dec 2019 18:01:25 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - c57603.sgvps.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - iwavesystems.com
X-Get-Message-Sender-Via: c57603.sgvps.net: authenticated_id: sheraz.ali@iwavesystems.com
X-Authenticated-Sender: c57603.sgvps.net: sheraz.ali@iwavesystems.com
Content-Type: multipart/alternative;
 boundary="------------B6AAD855B08A53E9A92DC486"
Content-Language: en-US

--------------B6AAD855B08A53E9A92DC486
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,

 =C2=A0=C2=A0=C2=A0 I am trying to build vlc,

I have added vlc to rootfs by adding following line in conf/local.conf

    IMAGE_INSTALL_append =3D " vlc //"

    CORE_IMAGE_EXTRA_INSTALL +=3D"vlc"

    In both the cases i was getting the following error when i was try
    to start the vlc player

root@iWave-G15:~# vlc -vvv
VLC media player 2.2.2 Weatherwax (revision 2.2.2-0-g6259d80)
[001450d0] core libvlc debug: VLC media player - 2.2.2 Weatherwax
[001450d0] core libvlc debug: Copyright =EF=BF=BD=C2=A9 1996-2016 the Vid=
eoLAN team
[001450d0] core libvlc debug: revision 2.2.2-0-g6259d80
[001450d0] core libvlc debug: configured with ../vlc-2.2.2/configure=20
'--build=3Dx86_64-linux' '--host=3Darm-poky-linux-gnueabi'=20
'--target=3Darm-poky-linux-gnueabi' '--prefix=3D/usr' '
[001450d0] core libvlc debug: searching plug-in modules
[001450d0] core libvlc debug: loading plugins cache file=20
/usr/lib/vlc/plugins/plugins.dat
[001450d0] core libvlc warning: cannot read=20
/usr/lib/vlc/plugins/plugins.dat: No such file or directory
[001450d0] core libvlc debug: recursively browsing `/usr/lib/vlc/plugins'
Segmentation fault

Am i missing any steps?

--=20
Thanks and Regards
Sheraz Ali Shah


--------------B6AAD855B08A53E9A92DC486
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <div class=3D"moz-text-html" lang=3D"x-unicode">
      <p>Hi,</p>
      <p>=C2=A0=C2=A0=C2=A0 I am trying to build vlc,</p>
      <p>I have added vlc to rootfs by adding following line in
        conf/local.conf</p>
      <blockquote class=3D"jive-quote">
        <p>IMAGE_INSTALL_append =3D " vlc <span style=3D"color: #0000ff;"=
><em></em></span>"</p>
        <p>CORE_IMAGE_EXTRA_INSTALL +=3D"vlc"</p>
        <p>In both the cases i was getting the following error when i
          was try to start the vlc player<br>
        </p>
      </blockquote>
      <p>root@iWave-G15:~# vlc -vvv<br>
        VLC media player 2.2.2 Weatherwax (revision 2.2.2-0-g6259d80)<br>
        [001450d0] core libvlc debug: VLC media player - 2.2.2
        Weatherwax<br>
        [001450d0] core libvlc debug: Copyright =EF=BF=BD=C2=A9 1996-2016=
 the
        VideoLAN team<br>
        [001450d0] core libvlc debug: revision 2.2.2-0-g6259d80<br>
        [001450d0] core libvlc debug: configured with
        ../vlc-2.2.2/configure '--build=3Dx86_64-linux'
        '--host=3Darm-poky-linux-gnueabi'
        '--target=3Darm-poky-linux-gnueabi' '--prefix=3D/usr' '<br>
        [001450d0] core libvlc debug: searching plug-in modules<br>
        [001450d0] core libvlc debug: loading plugins cache file
        /usr/lib/vlc/plugins/plugins.dat<br>
        [001450d0] core libvlc warning: cannot read
        /usr/lib/vlc/plugins/plugins.dat: No such file or directory<br>
        [001450d0] core libvlc debug: recursively browsing
        `/usr/lib/vlc/plugins'<br>
        Segmentation fault</p>
      <p>Am i missing any steps?<br>
      </p>
      <pre class=3D"moz-signature" cols=3D"72">--=20
Thanks and Regards
Sheraz Ali Shah
</pre>
    </div>
  </body>
</html>

--------------B6AAD855B08A53E9A92DC486--
