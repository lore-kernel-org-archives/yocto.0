Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2407DE0033F
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 01:31:40 -0800 (PST)
Received: from mail-ob0-f200.google.com ([209.85.214.200])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 27 Nov 2012 01:30:57 -0800
Received: by mail-ob0-f200.google.com with SMTP id lz20so49257336obb.11
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 01:31:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=oNUc6nPHLdNbRU9VWNib4+BPKQjgO02cas7k16wwvGA=;
	b=Ww49yyry0vM6Q5Ct1VtNEZMxomAL96ifjWx3uUtxcNkMnHjM+zkbYa1tQ9YeQ5dh+Y
	4XHBE1Gkbpgfz5nmhu6TozM0Tv93+zKuzcnQP5owZXC+PsTFPTZ9Pxe88VIMRkKdzXs+
	ubwcJvogN7TpiLc4jtBt4Gbxbsm4NPmD12qJTiQ0ae5uny/AN+cLW1RZQuHmziOHRCvx
	AdeK9I+ctPivFL02aXr3vcTcab80QVsjzDyR37gLnGyXo4D4/1vYEMP0QQHKQv3jZh5b
	NtVUiUVa596pYuoRWhfAaxELQL1WhpzsEESeVkP2AKUKa0np4xBDTj+IiYLdEs5F0Qi0
	CU6Q==
Received: by 10.60.169.140 with SMTP id ae12mr11836979oec.52.1354008698689;
	Tue, 27 Nov 2012 01:31:38 -0800 (PST)
Received: by 10.60.169.140 with SMTP id ae12mr11836970oec.52.1354008698494;
	Tue, 27 Nov 2012 01:31:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.132.198 with HTTP; Tue, 27 Nov 2012 01:31:18 -0800 (PST)
In-Reply-To: <1353962648.28133.60.camel@empanada>
References: <alpine.DEB.2.02.1211240752370.5998@oneiric>
	<1353962648.28133.60.camel@empanada>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 27 Nov 2012 09:31:18 +0000
Message-ID: <CAJTo0LZ0Cp78MSQRKZP_8X7M1w5eoCkOoGeoSMY7Jbnod6OgUw@mail.gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
X-Gm-Message-State: ALoCoQmN3ZVICe7MKsSd5l0ve2gjcElFVC8PBWO4ki/FrgOYjksOA7wcMwUys1GfD5WHE/CMcj/T3+g62jD7tf0NGhmtrsr/MWgKvLW40JvBxGXOjRoFcsdhNZY3yASOtR0AmwTjTI0Q5ddoAKRkSdgbMB8IWApz+w==
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Saul Wold <saul.wold@intel.com>
Subject: Re: does meta-intel/meta-tlk layer require a README.sources file?
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
X-List-Received-Date: Tue, 27 Nov 2012 09:31:40 -0000
Content-Type: text/plain; charset=UTF-8

On 26 November 2012 20:44, Tom Zanussi <tom.zanussi@intel.com> wrote:
> The meta-tlk layer isn't a BSP layer - it's a layer used to add the
> 'time limited kernel' feature to images built from a meta-intel BSP
> layer and distributed with that layer e.g. in the downloadable tarballs
> available on the Yocto downloads page.
>
> It's a meta-intel-only layer and has no meaning unless coupled with a
> meta-intel BSP layer, which does always includes a README.sources of its
> own, and so doesn't itself need one.

It's probably worth adding basically this as the README so that anyone
who comes across it knows what it is.

Ross

