Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B62B3E008AE; Mon, 26 Oct 2015 21:46:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2314CE0086D
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 21:46:01 -0700 (PDT)
Received: by ioll68 with SMTP id l68so210507881iol.3
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 21:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=B/nz24h1zpj+tqzxkxdCsco16NJ6ayO0eMBdrlpC8f8=;
	b=yV6nngvSmHNVlBDo4NroQVjTj+BhjYU2VQJ2AnLvf7tYwtNy1QcGfqWZi1v2IV+sxJ
	sULvBEhof2ERIiiQf0575KPk+6tB1E34kl5jj9j82lzHwq6TrM0P59a521IHRmMG7F7U
	8dq+DfT63NkjIgMiJR9kvpUk+a48G2KaMo0LADfXoadIZJ+wxGciP1/sOQ79ZzWZ72Bz
	3El2TaDlhG67i6fnuI4ghChUTeLy6LgZFfV618nB6BqbwhW5zdFiuGimCC6C2McAcHWT
	Y4ehIepl/4y2X2aqWQEWhYDEuNJMOqW3Z5VHR6UNj/5UzIuqY7Nk1ZMkuQ7QeCODX46+
	7zkg==
MIME-Version: 1.0
X-Received: by 10.107.40.199 with SMTP id o190mr35739583ioo.17.1445921160564; 
	Mon, 26 Oct 2015 21:46:00 -0700 (PDT)
Received: by 10.107.142.202 with HTTP; Mon, 26 Oct 2015 21:46:00 -0700 (PDT)
In-Reply-To: <3581319.5ZKXkvWLxe@peggleto-mobl.ger.corp.intel.com>
References: <CAGMdoFmGGd6QWhRWWhYQYajjmhVYugZh3zga0WNXbwN+vNWSBQ@mail.gmail.com>
	<3581319.5ZKXkvWLxe@peggleto-mobl.ger.corp.intel.com>
Date: Mon, 26 Oct 2015 21:46:00 -0700
Message-ID: <CAGMdoFn5tQ7TO07WpqHi0sR7kOKpNsmi=_MOnsNf=4J47_7mJQ@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: kernel defconfig configuration
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
X-List-Received-Date: Tue, 27 Oct 2015 04:46:04 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 26, 2015 at 1:03 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Kernel modules are packaged separately and typically not included in the image
> by default; if you wish to include them you have two choices:
>
> 1) Install the kernel-module-<modulename> package(s) individually for the
> module(s) you wish to use
>
> 2) Install the kernel-modules package to bring in all packages for modules you
> enabled in the kernel configuration.

Thanks Paul,

"kernel-modules" worked to include all the modules. But I also figured
out I was using "kernel-module-ftdi_sio" instead of the correct
"kernel-module-ftdi-sio" (and because I was using
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS, it didn't complain.)

Now to go back to the original problem of why my defconfig is being overridden.

