Return-Path: <otavio.salvador@gmail.com>
Received: from mail-oa0-f51.google.com (mail-oa0-f51.google.com
	[209.85.219.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8736FE005B3;
	Fri, 21 Jun 2013 05:40:06 -0700 (PDT)
Received: by mail-oa0-f51.google.com with SMTP id i4so9252319oah.24
	for <multiple recipients>; Fri, 21 Jun 2013 05:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=ekeVhxg1Uzj2QJTYt3b204mkRCKeVAw/x+DuQ1BSvkk=;
	b=JHD1mHVbrLkVRy5rvHP86uegozFnbEFoZsm94yW/2hGtZ99ndDffcbIIXi+YOCpBKs
	CuIoSka7Om+14iDKDmxzvKAtmfbJOuE6IV+24z0PLH6aU+JimdoTfG2gIy3xAlggjMrQ
	OxXjaQN+lMezxpY/YVyZS4SeRtZr17l9vUn7QiLiKoO+8R3oVW+nCwxzuPYEQ2wC837i
	0Oj9wcwBrTWVBbNQvfS4H32xf/ukA8pIJDcnbrfRF5MLHEyIa53U+wxVthR7vZ/3ILbH
	fCAoJceqxizuBXjjv+EV2MkNxK8ipFYxsUu/Vj39yAqPYI555OQ/oYhelYw/EUA9ZM5g
	bfyQ==
MIME-Version: 1.0
X-Received: by 10.182.232.225 with SMTP id tr1mr3450360obc.69.1371818405697;
	Fri, 21 Jun 2013 05:40:05 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.182.98.133 with HTTP; Fri, 21 Jun 2013 05:40:05 -0700 (PDT)
In-Reply-To: <DUB116-W60C69FEECFE2B8142B8B2A988F0@phx.gbl>
References: <DUB116-W138390BF0B4871C803B01A5988C0@phx.gbl>
	<C25AF55E-9B30-43AC-B8BF-A648E791F298@gmail.com>
	<CAKL3bWWTiZ6BwCqVfso6XxSD_b6O1EE7=m8EddPaY74NWHy+kA@mail.gmail.com>
	<DUB116-W60C69FEECFE2B8142B8B2A988F0@phx.gbl>
Date: Fri, 21 Jun 2013 09:40:05 -0300
X-Google-Sender-Auth: P6SvclS0eU5g5FEYh0t9ioO-GzU
Message-ID: <CAP9ODKou+Mn+9vP7k4Wbs_CUp6mjhND_8eCs-2tyWXb1vRNdLg@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: Thanassis Silis <djnass_18@hotmail.com>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] cannot bitbake/build.compile tcf-agent for use with fsl-image-gui-sdk
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
X-List-Received-Date: Fri, 21 Jun 2013 12:40:10 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jun 21, 2013 at 9:26 AM, Thanassis Silis <djnass_18@hotmail.com> wrote:
...
> In the end it was some problem with the packages_deb. There seem to be some
> bug related to deb packaging. I only set deb packaging because it seems more
> compatible as I am on a Ubuntu system.
> rpm packagin on the other hand worked nicely.
...

I am a Debian fun (not much an Ubuntu one thought) and I use the ipk
backend. The ipk is mostly a .deb but handled with 'opkg'. You can
even use dpkg-deb to check control information and its contents. So it
is a .deb for use in embedded. The opkg tool has soon changes to fit
better in embedded requirements so this is my default option.

--
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://projetos.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

