Return-Path: <scott.a.garman@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A21CE0044D
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 11:15:16 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 04 May 2012 11:15:04 -0700
Received: by pbbro8 with SMTP id ro8so12773402pbb.25
	for <yocto@yoctoproject.org>; Fri, 04 May 2012 11:15:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=Frkvpry5CNAO5QPyAxGOmcxB1ASH/6isugLJuXiToPI=;
	b=ZqJ1RmQnDDmZd/NKAUR+8p6qLnPqT2lGhEvan3Z1AqiCccwQdFW1972oZYYjwgHQvA
	qX8FpQj5JU+685Wg71GqF1Pa1S26p/8UiXDIm4N1ZF72exTofFhLzXz3gi4oqldr7KWI
	esOHdVhEQLV3MTbbHueDd4AGVCi1QfPvPAjFeIvbCTLtz/Tf7g2tA+XNqnwHnqaQZefP
	ZMrDxmJgBKh38J3LsGMcrfYiiHDhoG7nbv72kY8/OP2x8pNZ3Vu6NJW+P32qUjxcF5W2
	9SZ4Y5gZdmKBMxFtUvX2+7dIwN+9h+C1nzkiZXOaxp5VFbUPBHPK+RzPhpBI5xpDtriP
	kukQ==
Received: by 10.68.213.73 with SMTP id nq9mr21622720pbc.40.1336155304064;
	Fri, 04 May 2012 11:15:04 -0700 (PDT)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id ui2sm5162756pbc.8.2012.05.04.11.15.02
	(version=SSLv3 cipher=OTHER); Fri, 04 May 2012 11:15:02 -0700 (PDT)
Message-ID: <4FA41CAC.2090208@intel.com>
Date: Fri, 04 May 2012 11:15:08 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <cover.1335812928.git.tom.zanussi@intel.com>
	<3cea3e5b38f503cb2ac22bedf88e1ba14391c2ab.1335812928.git.tom.zanussi@intel.com>
In-Reply-To: <3cea3e5b38f503cb2ac22bedf88e1ba14391c2ab.1335812928.git.tom.zanussi@intel.com>
X-Gm-Message-State: ALoCoQncWSYBfgaeOFGmNixq81ZvlCxdrhnpA8tpZdAGp/eookzl4aNEedKC9OsTFYIo0JCTClXb
Subject: Re: [PATCH 1/2] yocto-kernel: use BUILDDIR to find bblayers.conf
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
X-List-Received-Date: Fri, 04 May 2012 18:15:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/30/2012 12:12 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> The current code assumes that builddir == srcdir/build, which it
> obviously isn't sometimes.  Use BUILDDIR to get the actual builddir
> being used.
>
> Fixes [YOCTO #2219].
>
> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>

Merged to denzil-next, thanks!

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

