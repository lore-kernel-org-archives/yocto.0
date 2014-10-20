Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A87C8E00861; Mon, 20 Oct 2014 03:42:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.41 listed in list.dnswl.org]
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED6B8E0071C
	for <yocto@yoctoproject.org>; Mon, 20 Oct 2014 03:42:02 -0700 (PDT)
Received: by mail-qa0-f41.google.com with SMTP id n8so3137950qaq.14
	for <yocto@yoctoproject.org>; Mon, 20 Oct 2014 03:42:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=V2jqMaDeY2wrnFvz9TrSw4yRuEwxtU+wcpfgqGCAVtY=;
	b=isqWZ0Qkm2TNVVzrBhh+m0ZH/asjSR2lamCbI7ffJ9XD26vAuEiEJQlbN7M2wPAWp/
	d2s71NeENRz4oAYw3lZOJp14VccNMiog1Q1QLjZTw2pBjq5VvXiSbUeEZdkqRtcs6aCa
	56qQAwGOZHM5eebYcdhGAJ/rJXzY8dcPO7lz5crYW6uq4J12HqtyIpCh/DXVd47BQakK
	fTNAiVNAzR7L/52fsDSBYYpWazGJCokR5TVa/FgulnZNeXmhTuOysK9rvK3WT7LWakZo
	ySeu+nlkdmJDIcG7UuaMDtgOM6GfB6DrptQ5wwues8MPp7NpObTYy3ICgD18SHxfHzS4
	+p0A==
X-Gm-Message-State: ALoCoQlFQ9WXIH4KA+OgwLoCxKJj0LDsbvXWzASSmys6WHJA3KdWIlHHbV9b3VU3lk718yxsAFsj
X-Received: by 10.229.37.138 with SMTP id x10mr19243231qcd.5.1413801721646;
	Mon, 20 Oct 2014 03:42:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.93.65 with HTTP; Mon, 20 Oct 2014 03:41:41 -0700 (PDT)
In-Reply-To: <3204FE6663E1F14CAF4CA6928E60C85215BBF531@USSTLZ-PMSG012.emrsn.org>
References: <3204FE6663E1F14CAF4CA6928E60C85215BBF531@USSTLZ-PMSG012.emrsn.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 20 Oct 2014 11:41:41 +0100
Message-ID: <CAJTo0La5r2h1v=gmfWXUKqCgRsa33h0HT0jEF2KFpce9G+AVrQ@mail.gmail.com>
To: Neil.Wu@emerson.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: create_image.tar fail
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
X-List-Received-Date: Mon, 20 Oct 2014 10:42:04 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 20 October 2014 03:24,  <Neil.Wu@emerson.com> wrote:
> =C2=B7                   I need to  creat a new recipes to add libtdb to =
rootfs.
> The source code of tdb is Makefile-Base Package. Bitbake make will run th=
e
> makefile  automatically to finish the do_compile. But , I must to execute
> one =E2=80=9Cconfigure=E2=80=9D file of source code in do_configure task =
before do_compile.
> How to execute the =E2=80=9Cconfigure=E2=80=9D  in do_configure task ?
>
> =C2=B7
>
> =C2=B7                  do_configure{
>
> =C2=B7                             =E2=80=A6=E2=80=A6=E2=80=A6=E2=80=A6  =
 /*how to execure the configure file*/
>
> =C2=B7                            }
>
>
>
>             How to solve the problem?  If you know , please help me.  Tha=
nk
> you.

Just write the commands that you'd normally run to configure the
software.  However in this case libtdb (assuming you mean the tdb from
Samba) appears to use waf, so simply doing "inherit waf" will give you
configure/compile/install functions automatically.

Ross

