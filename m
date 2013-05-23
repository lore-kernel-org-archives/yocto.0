Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f181.google.com (mail-ve0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B873E0148D
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 07:55:33 -0700 (PDT)
Received: by mail-ve0-f181.google.com with SMTP id db10so687582veb.12
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 07:55:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=DIR/wPaYqr3NuVcC+ZO1pIv6PQHWw1NzUiAbBQRbPro=;
	b=BpPREjtwJevUhGhZOaFwD8hK9t2xit52MzJ/TkwTEum2Wd1C/LZjk3KDZYqBkuaaUl
	h1f3RvuqbcSB/USGGd2Qm4esamqEcafmG5xiSP82W7urIglBYj9tWWa8BKsZZUhKdRUO
	FmMfe/vT40oFYPVdfXarDRgChR0ZSqhufgAWGx2oe5xCRyPUcyrQWQ/UAP8kjAD0S8YD
	8mKtAF3y6AFu3eomQACXOuIMEf3NAGjaOQv9gkSLLfNHVXNhQM3uTXGai2B4sjOTdwov
	PL/EGuM6f4s9b1jdZmqhrLNsiRM+OEbiRTOQdbZW0FIrm2/fFR1nAwcBz5oWZJ7XSGyA
	n9Mg==
X-Received: by 10.220.96.76 with SMTP id g12mr5454122vcn.53.1369320932472;
	Thu, 23 May 2013 07:55:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.98.7 with HTTP; Thu, 23 May 2013 07:55:12 -0700 (PDT)
In-Reply-To: <CAFyqS9r0yUn_dNT0PH9WgFp2pyOs3M+bNdQ=YnPAa8u8fbkFzw@mail.gmail.com>
References: <CAFyqS9r0yUn_dNT0PH9WgFp2pyOs3M+bNdQ=YnPAa8u8fbkFzw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 23 May 2013 15:55:12 +0100
Message-ID: <CAJTo0LYOqeHywd4zftCoccUpnvcB3kDA-TLtgjknkkAZh_Ec4Q@mail.gmail.com>
To: =?UTF-8?Q?Hans_Beck=C3=A9rus?= <hans.beckerus@gmail.com>
X-Gm-Message-State: ALoCoQmruwE9rwm7wdEk9/rvl9tZxYLLtLrQXiPmXyJfyFsJF309DRD+EIUMKQ6fKPjJtvudnmq+
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: .rpm packaging weirdness of dynamic libraries
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
X-List-Received-Date: Thu, 23 May 2013 14:55:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 23 May 2013 15:50, Hans Beck=C3=A9rus <hans.beckerus@gmail.com> wrote:
> But in the rpm, the libs are packaged incorrectly (or at least not as exp=
ected)

There (should) also be a linx-dev package, that contains the .so
symlinks.  .so symlink files are only needed at compilation time for
properly versioned libraries.

Ross

