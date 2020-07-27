Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
 by mx.groups.io with SMTP id smtpd.web10.63682.1595877540835706382
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jul 2020 12:19:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ftml.net header.s=fm1 header.b=pM8VzH9/;
 spf=pass (domain: ftml.net, ip: 66.111.4.29, mailfrom: fdk17@ftml.net)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 9BADC5C013C
	for <yocto@lists.yoctoproject.org>; Mon, 27 Jul 2020 15:18:59 -0400 (EDT)
Received: from imap7 ([10.202.2.57])
  by compute3.internal (MEProxy); Mon, 27 Jul 2020 15:18:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ftml.net; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm1; bh=4JZkdzKwBcjuccwGkkizR4PHcuPgsdr
	C7Wt+Jv4+L24=; b=pM8VzH9/ntoHojmD2AE6NMfTk8kzQ6O7gjeQRO8tYZFSJCX
	tsw9EsqBEWJrfOrctrlxOcfYR8liJ9VHr3yz+6KVmzH4bMMpQZVMvAGxXQlgssvh
	fRe71lLuN1Eo8/IlTD3++pzwPGllamPrPg27RYC7FVXJikYUQVHgrmqZYWEFaHvG
	RXyhogLbvNJbtQSKJew54Yrg+X2+cINkbkabiSKImxA1EWz5afiSjS9zYDC+VBoV
	TVFICmOr+xCsrsXa8KWiWIlcGIl/yLCFNCNXaDRzM1Z/GrKxBlpXSqV3X263hWil
	kvUJy2wGERWesPSprHDgHu1PjiyS3cXilo2DvZw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=4JZkdz
	KwBcjuccwGkkizR4PHcuPgsdrC7Wt+Jv4+L24=; b=lLBc01tTGp0f5bG0P6XMzx
	STuwXBjoQqy8R6FL2cCNMYIDBS2evP/pCZVhiMArO2cbMetlk/ZPYCQHCchLuNCV
	FmyvEQq9VE3xHA7oQdAo5tzZZW+CqvHqZWWn8UFpD7hEtegMfjk3Xx4lOsFYiuBQ
	fOpRqLK8sUwetHwjMig95CrLPPlYBaxSJ4SkVCW3ssE4Ceq7PplIQWHcA6tmyDrT
	LOmXiux6JPGwoGSyVpCWOXFXYRnVlfvq8vfvvA+0sjkj8nj4ZBGGoG2loA5X7sYA
	QfLGWeF9XIlorHJfzpNBC4CbhdMt1680LR0b60R4B+BBbVB3O1dGsNs/zlf1yXKA
	==
X-ME-Sender: <xms:oygfX21ukpyK8de5fvmoDnZSWKBuuDdU--PWOALZLuEYwwrM_g_-AQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedriedtgddufeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvufgtsegrtd
    erreerredtnecuhfhrohhmpedfhfhrvgguuceurghkshhikhdfuceofhgukhdujeesfhht
    mhhlrdhnvghtqeenucggtffrrghtthgvrhhnpeevgfegfeefueegheelgedvfeeuieegff
    fhieeiheffuddviedukeejuddugfelgfenucffohhmrghinhephihotghtohhprhhojhgv
    tghtrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepfhgukhdujeesfhhtmhhlrdhnvght
X-ME-Proxy: <xmx:oygfX5EOAdTI_D3CFcy85GwyI2BfHGefc2MpEtqp-3ZgXPBuwOvYEw>
    <xmx:oygfX-7RlVr6ym0afb62tCG6vskpLl4YRoivmmo3qLxKQTnDquxgrQ>
    <xmx:oygfX32isVyq8wEcGjAy1VZ00q1nGRpmUs0ax2RWDuE1T7Ov51rWyA>
    <xmx:oygfXxHYwCaNwPNWHHV1LZ17eg1wafKbbrlkgixQPagCsL5gIWJuog>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 41B5F180490; Mon, 27 Jul 2020 15:18:59 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-92-g11c785d-fm-20200721.004-g11c785d5
Mime-Version: 1.0
Message-Id: <c449c6f2-ea03-4de2-a48d-77f9995b582b@www.fastmail.com>
In-Reply-To: <11928.1595824718226986412@lists.yoctoproject.org>
References: <932b3576-0e34-456a-8c76-0897a4e8c5c7@www.fastmail.com>
 <11928.1595824718226986412@lists.yoctoproject.org>
Date: Mon, 27 Jul 2020 15:18:38 -0400
From: "Fred Baksik" <fdk17@ftml.net>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Offline Build #yocto
Content-Type: multipart/alternative;
 boundary=0dcd118e64204c23997ea122e0359f50

--0dcd118e64204c23997ea122e0359f50
Content-Type: text/plain


On Mon, Jul 27, 2020, at 12:38 AM, Amrun Nisha.R wrote:
> Hi Fred,
> 
> check whether the downloads folder has all the files. I found that while checking the folders, I can't able to find the branches and ref folders in the git2 folder (downloads/git2). Once i placed the empty folders branch and ref, it works fine for me. And I didnt update on the config file. 
> -=-=-=-=-=-=-=-=-=-=-=-
> 

https://www.yoctoproject.org/docs/2.7.4/mega-manual/mega-manual.html#replicating-a-build-offline

The downloads folder that I used to setup the pre-mirror didn't even contain the git2 folder.  From the directions:
*Optionally Remove Any Git or other SCM Subdirectories From the Downloads Directory:* If you want, you can clean up your downloads directory by removing any Git or other Source Control Management (SCM) subdirectories such as `${DL_DIR}/git2/*`. The tarballs already contain these subdirectories.

FYI, the documentation states for DL_DIR:
By default, `DL_DIR` gets files suitable for mirroring for everything except Git repositories. If you want tarballs of Git repositories, use the `BB_GENERATE_MIRROR_TARBALLS` <https://www.yoctoproject.org/docs/2.7.4/mega-manual/mega-manual.html#var-BB_GENERATE_MIRROR_TARBALLS> variable.

All I can say is that following these directions for replicating the build offline worked.
When skipping any of the steps I saw similar errors like the one in the original post.

--0dcd118e64204c23997ea122e0359f50
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div><br></div><div>=
On Mon, Jul 27, 2020, at 12:38 AM, Amrun Nisha.R wrote:<br></div><blockq=
uote type=3D"cite" id=3D"qt" style=3D""><div>Hi Fred,<br></div><div><br>=
</div><div>check whether the downloads folder has all the files. I found=
 that while checking the folders, I can't able to find the branches and =
ref folders in the git2 folder (downloads/git2). Once i placed the empty=
 folders branch and ref, it works fine for me. And I didnt update on the=
 config file. <br></div><div>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-<br></div><div><br></div></blockquote><div><br></div><div><a href=3D"ht=
tps://www.yoctoproject.org/docs/2.7.4/mega-manual/mega-manual.html#repli=
cating-a-build-offline">https://www.yoctoproject.org/docs/2.7.4/mega-man=
ual/mega-manual.html#replicating-a-build-offline</a><br></div><div><br><=
/div><div>The downloads folder that I used to setup the pre-mirror didn'=
t even contain the git2 folder.&nbsp; From the directions:<br></div><div=
><span class=3D"emphasis"><i>Optionally Remove Any Git or other SCM Subd=
irectories From the Downloads Directory:</i></span> If you want, you can=
 clean up your downloads directory
                        by removing any Git or other Source Control Mana=
gement
                        (SCM) subdirectories such as <code class=3D"file=
name">${DL_DIR}/git2/*</code>.
                        The tarballs already contain these subdirectorie=
s.<br></div><div><br></div><div>FYI, the documentation states for DL_DIR=
:<br></div><div>By default, <code class=3D"filename">DL_DIR</code> gets =
files
                    suitable for mirroring for everything except Git
                    repositories.
                    If you want tarballs of Git repositories, use the <a=
 class=3D"link" href=3D"https://www.yoctoproject.org/docs/2.7.4/mega-man=
ual/mega-manual.html#var-BB_GENERATE_MIRROR_TARBALLS" title=3D"BB_GENERA=
TE_MIRROR_TARBALLS"><code class=3D"filename">BB_GENERATE_MIRROR_TARBALLS=
</code></a> variable.<br></div><div><br></div><div>All I can say is that=
 following these directions for replicating the build offline worked.<br=
></div><div>When skipping any of the steps I saw similar errors like the=
 one in the original post.<br></div></body></html>

--0dcd118e64204c23997ea122e0359f50--
