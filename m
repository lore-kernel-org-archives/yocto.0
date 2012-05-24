Return-Path: <kergoth@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D93AE01363
	for <yocto@yoctoproject.org>; Thu, 24 May 2012 08:21:43 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so6965927wgb.11
	for <yocto@yoctoproject.org>; Thu, 24 May 2012 08:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=0n989SB6ntOqF56sljD9PV1GQdoK54z/xIRW0INNp3I=;
	b=OCfeVyP8f1k57ZWLgQ0pzOmyGK1dXIWnnHsQ/yDXIJdrNfByVzQwrQCOylBXmN7oH7
	QVrFOUF4yrOQcMTVi1J0cU6X8loTsVJDVyHOU345cp1vA6JFMjA8z3VQUt3IXqeRu5ua
	F45RoIz/Cjaa/WHM3bo0b2QJSUL4UPrQE/tC6uZUOs5t2aD++lwSXfY9IWt4LNLZGc5j
	JDUS0IFnMKUAGeC0aSlLzBhPJSPpxcrI3lTGAApPg/yAD0b4RWO0zoGvRg9GOfeUckAZ
	hQovP5G2dW3j0QuHA2IVEIKc1wnbSdd53D2kih9e0TV3hbfZSffjt9Of/ePdhflLErhR
	GLbA==
Received: by 10.180.102.36 with SMTP id fl4mr48403394wib.2.1337872902364; Thu,
	24 May 2012 08:21:42 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.181.16 with HTTP; Thu, 24 May 2012 08:21:22 -0700 (PDT)
In-Reply-To: <4FBE4BD6.5060800@gmail.com>
References: <4FBE4BD6.5060800@gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 24 May 2012 08:21:22 -0700
X-Google-Sender-Auth: yV6ZOXUmpTMj0dws22yrkXMg6Nc
Message-ID: <CABcZANmZ1k3vpJJxKKGNYG-bbZ-YH2bS5Fej6O5E=Fg5aRkitA@mail.gmail.com>
To: jfabernathy <jfabernathy@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: checking out branches: tracking vs. tags
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
X-List-Received-Date: Thu, 24 May 2012 15:21:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, May 24, 2012 at 7:55 AM, jfabernathy <jfabernathy@gmail.com> wrote:
> the Development Manual Appendix A
> (http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#dev-=
manual-bsp-appendix),
> I see the statement:
>
> =C2=A0$ git checkout denzil-7.0 -b denzil
>
>
> What I think this does is create me a local branch that is fixed to what =
was
> committed when the denzil-7.0 tag was created and it will remain that way
> and will not track the denzil branch as it gets updated. =C2=A0Right????
>
> Now if I want to track the denzil branch as changes are committed, I thin=
k I
> do the following.
>
> =C2=A0$ git checkout origin/denzil -b denzil
>
>
> Now I can do git pull commands to get the updates that are committed.
> Right??

Your arguments are backwards. See git help checkout.
--=20
Christopher Larson

