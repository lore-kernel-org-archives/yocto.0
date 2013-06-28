Return-Path: <paul.betafive@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92C99E01482
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 03:16:55 -0700 (PDT)
Received: by mail-vb0-f48.google.com with SMTP id w15so1562294vbf.7
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 03:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=fk2OHxlHNlwH//KhcDnvQSZ8eNGRexRJUCw22+IIivI=;
	b=0VCaT6mDcF67yZHW/2sDgLg/ZVg7qhTE2CHsUkx+hC98kxMtYWWo++wsmVExCmgb9o
	2QK0qD59MNyDfmohE69cxMTyfOEG4v8a9f+XcDqG/P828qKlPA1TxOVXJPFLaasY8h9E
	8jJs8n3ym/GXgD5NdilqHcnCw0TQXdyiIZUpEBSOHeoYw5asp5/17ObsOWW/w//NB1pW
	SqhvbHeTkNff3Q34sAYSvCpdUv5VebF3eLEiLgMfpfClJyP0kurGvtNMQH7vEX32lPLo
	QJi2GdTnNUokxcar6PShy59Wa8uULdVXIZdA4K8660aRcIY9f054i8crf0k1PHS3ZjTT
	V95w==
X-Received: by 10.221.4.138 with SMTP id oc10mr5411834vcb.26.1372414614797;
	Fri, 28 Jun 2013 03:16:54 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.195.201 with HTTP; Fri, 28 Jun 2013 03:16:14 -0700 (PDT)
In-Reply-To: <76247853.lJbnn8TcbK@helios>
References: <14A8E2D5-FF50-4903-A839-806D77B12FF8@keylevel.com>
	<76247853.lJbnn8TcbK@helios>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 28 Jun 2013 11:16:14 +0100
X-Google-Sender-Auth: Ca2zz718VcArqDdBILEibXfa3Fs
Message-ID: <CANyK_8d7jphmfZq2Pz5hp=jJ_OZ_c5PU67angHeZY5PZ55BqLw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Bitbake requires Python 2.7.3
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
X-List-Received-Date: Fri, 28 Jun 2013 10:16:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 28 June 2013 10:40, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
>
> FWIW, for older hosts where installing these tools in the normal fashion is
> difficult or impractical, there is now buildtools-tarball (which replaces and
> extends the old external-python-tarball). This builds on the relocatable SDK
> installer to provide suitable versions of python, git, tar and other tools
> required on the build host. I believe the plan is to offer this for download so
> that people can get started immediately (and of course point to this in the
> documentation).
>

Just chiming in to say that sounds excellent. Will this contain a
known-working make as well for those with a broken make 3.82?

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

