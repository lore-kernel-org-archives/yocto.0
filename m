Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f174.google.com (mail-vc0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76E35E014EA
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 03:12:24 -0700 (PDT)
Received: by mail-vc0-f174.google.com with SMTP id gd11so2620285vcb.19
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 03:12:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=eFZzUuc0p4bUZr9NVS0PZL6/2SLQsm4MK44eoaMOpXM=;
	b=huWj5QpGmFO60sJvcQAqaUOWfKwjGG/81P3eDlz/Tefh4gbPlDmePvApzrPXGpQ/Tc
	Na8KTjhj06dILojQxDg3k7dOso7n5EL38NvBrmwnWzI9vxacD0WgAt1upD0U+3d8B+P4
	WvOGZeOb9GgpW5AL4hzEsRw3/xjJEXYlMVzbJ2JOA9Gkaosl2ajyK5uJYZ3XCM8dAfv6
	OQ+bv3ueqZDf36RJyFM0u2F47jcM1vazYqPTkVDc5/ceVl8dU30bZwrBz1YxxdZNmVk/
	XsiK4eIjZPix+B44Z0VRNXPAG395JnCkSyV2aL6mXSDutAzTEBf1X0/kxpAwcRxGxUsk
	o2WA==
X-Received: by 10.52.164.102 with SMTP id yp6mr22855031vdb.14.1379326343962;
	Mon, 16 Sep 2013 03:12:23 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.109.72 with HTTP; Mon, 16 Sep 2013 03:11:43 -0700 (PDT)
In-Reply-To: <CACWQdqDdyeUfD876UMxoQVhDXuRQvpHG-AfxEcpCN54PgesOhQ@mail.gmail.com>
References: <522EE8CE.3060806@vtkloud.com>
	<CACWQdqDdyeUfD876UMxoQVhDXuRQvpHG-AfxEcpCN54PgesOhQ@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Mon, 16 Sep 2013 11:11:43 +0100
X-Google-Sender-Auth: AtICAxRLnCLQkMGsQ1zy0pNG1o0
Message-ID: <CANyK_8dCj5pHFZhVDyKFmSvafMsTn58ZwpENVzJeBhFi57JVPA@mail.gmail.com>
To: Javi Roman <javiroman@kernel-labs.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: curl smart package requires curl-cert... another strange smart dependency issue
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
X-List-Received-Date: Mon, 16 Sep 2013 10:12:25 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 16 September 2013 11:04, Javi Roman <javiroman@kernel-labs.org> wrote:
> I've opened a new bug with this issue:
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=5204
>
> This dependency problem makes curl unusable.
> Javi Roman
>
>

Just looked as this as I know curl works on my raspberrypi. libcurl5
RECOMMENDS curl-certs, it does not DEPEND on this. Sounds like the
smart package manager isn't so smart.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

