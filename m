Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADC0CE00D59; Tue, 16 Jul 2019 06:00:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.53 listed in list.dnswl.org]
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A395E00D4F
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 06:00:05 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id e20so9389262iob.9
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 06:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=JG7bTkIpOy5wrOc9wGKaQSrVQ24KcOBgl4vnjd52zXA=;
	b=Bz8alsVxI+yLtAdl0d6Pk9MrqozR8pSUw0C2qaUTP5EsunQMPoUGwhOr7jqEKO68Wv
	ebhogUm5kEDPCxtcck3pcc1aYrR2OnWe7NfgmTJokJLFjGg+ARJMGo0j42OafwVCSs2H
	QXuYBg9yNLA31GKZ6PqAEHvu0/t41eyjjwUE04XlgV2YljZqLO+ot9ONe3LHIqW4Veja
	vd/KVdfSHdWcvnPMOxDT5EfT0RBJebToHOHAd2f3WPQxAPgCX65LB32yGUjzyJ5UIjoN
	SR1pth/WXnYSYTS953hS9sRn7XgpAVs5mwq+Ur0RtGusfNbDRfidL36ofvlVqAMajdIL
	MBVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=JG7bTkIpOy5wrOc9wGKaQSrVQ24KcOBgl4vnjd52zXA=;
	b=OGoP7hHHoLr02p+L3aHTJpClPl9B1VOh63QhaxCH8ALiYUtAJ0zB9bMMK6Z0uPSyXf
	S+xFj7FPaavTaoBSTLjYhPxl7lYsbGvM84TcYljfx73x3vqzA9qkn+jRt9N/d+fHCYjh
	pD2EW3E8SSAWSKNC/lRDAudr+FoZf8iJoO88THobvvOvKE05SMS3T4aPNawLoFENCSsC
	j3XkjDW1txSZN0AwXm7fpaOuKE/DYHwF7FGETgu7xJHF1Lh8uI8ZJCJwddsm9E0i26QZ
	o86JxBZxWcede7hMBWd7GnILG9Zhdpuo/ISeaaLdHv0rFzHXPZtjEWBpNcnuL5hzk4Hy
	0jSQ==
X-Gm-Message-State: APjAAAVNlSJMxOsrgDddXmw0w/0Oowjw5PhARIQgZnlp6KWyGNuWNBy5
	hfHBhAjFVIPWLAmAsGd0f3Yx0i991lJSvvoL/9uNVSayHWM=
X-Google-Smtp-Source: APXvYqztPQF9hj+rlTNdpCAr+IpmfGH/LGjVy8rxtAg7+2gKre/XQ+Vbzpi3ccPom6DbPHVQRCvvb6d4znilI6JaTlY=
X-Received: by 2002:a5e:a708:: with SMTP id b8mr31621069iod.25.1563282004799; 
	Tue, 16 Jul 2019 06:00:04 -0700 (PDT)
MIME-Version: 1.0
References: <em1f413de5-81b2-4304-ba58-358a033d5bf7@andys-imac.local>
In-Reply-To: <em1f413de5-81b2-4304-ba58-358a033d5bf7@andys-imac.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Jul 2019 13:59:52 +0100
Message-ID: <CAJTo0LZ54xu1as_EtmenHkTxq0JmonmUUm24ZnoaVWO3ujDVDw@mail.gmail.com>
To: Andy Pont <andy.pont@sdcsystems.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: wpewebkit, cog and libgles2
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
X-List-Received-Date: Tue, 16 Jul 2019 13:00:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 16 Jul 2019 at 13:53, Andy Pont <andy.pont@sdcsystems.com> wrote:
> I am building for a Microchip (Atmel) SAMA5D2 using meta-atmel.  We don=
=E2=80=99t need OpenGL or 3D support - hence one of the reasons for picking=
 the SAMA5D2 which doesn=E2=80=99t have a hardware GPU.
>
> The options appear to be to either add software OpenGL support to the con=
figuration to resolve the dependency or tell wpewebkit not to want OpenGL s=
upport.

Well the libwpe build script says this:

find_package(EGL REQUIRED)

(https://github.com/WebPlatformForEmbedded/libwpe/blob/master/CMakeLists.tx=
t)

Which suggests that you can't build it without EGL.  You should
investigate whether EGL is simply an option, or whether it's used as a
fundamental part of the rendering.  If it's optional then the Mesa
recipe can build a software GL implementation, if the latter then
you'll need a new browser as software GL is *terrible*.

Ross

