Return-Path: <otavio.salvador@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A163E01346
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 06:13:01 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so953762pbb.35
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 06:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=HfEcyp3/ev+kniiP3nJyFpSw1lsflN8CU2ZsHQdk9OE=;
	b=pc3lFk/hX1R0m5zD/EXqjwPZX1sZB3E9XYKEwXR3Cq9abLf74BJc99UC5w9QAJ6b0L
	b0pU+NgRp6aG3AZhhMf6vQvHgFfLwpYAPrVhRmf2CadVIpVqvF1fJSY6WP4nTyg+1MPe
	RA5RsujXXnv7/Ju0tRfEYFgbXhYK3+189O1/JxODVeQDNSEvzRTDNpuvDVGu4KzTlotq
	Ua+C7yE19UJ8kaO849dk/DJNzLv2iNE45xzAp7Ienj1+osjHHRcAAzYppXsIKkP5keEG
	jX/HthxdKtvw7gf8T9LqW+biN/9wS+HIrCZo2tJSK2jf/V8Dw3Kalx0KsHCrHe+O0yIo
	FUZg==
MIME-Version: 1.0
Received: by 10.66.72.130 with SMTP id d2mr26718251pav.59.1347369167333; Tue,
	11 Sep 2012 06:12:47 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.68.36.105 with HTTP; Tue, 11 Sep 2012 06:12:47 -0700 (PDT)
In-Reply-To: <CANmViric_L-9eh-VLbC63RqH-2nU0VwRr+546MmtDh1QKOmL4Q@mail.gmail.com>
References: <CANmViric_L-9eh-VLbC63RqH-2nU0VwRr+546MmtDh1QKOmL4Q@mail.gmail.com>
Date: Tue, 11 Sep 2012 10:12:47 -0300
X-Google-Sender-Auth: f6h7eGWu3kZRmv894tS9IVtQGjQ
Message-ID: <CAP9ODKr--f3diwzo5C430AGU9bXLovOV3+mU6azwzcQFQZc6mA@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: meta-fsl-arm@googlegroups.com
Cc: yocto@yoctoproject.org
Subject: Re: imx28 u-boot without NAND command
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
X-List-Received-Date: Tue, 11 Sep 2012 13:13:01 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Sep 11, 2012 at 9:55 AM, Raul Rosetto Munoz
<munoz0raul@gmail.com> wrote:
> Hello All,
>
> I need to use the command NAND in  the imx28 u-boot.
>
> I did a patch that put the line "#define COMFIG_CMD_NAND" in the

It is a typo; use:

#define CONFIG_CMD_NAND

and it should work.

> "/include/configs/mx28evk.h" file, and if I look at
> "/tmp/work/imx28evk-poky-linux-gnueabi/u-boot-v2012.04.01-r3/git/include/configs/mx28evk.h"
> I can see that the patch was sucessful.
>
> My problem is that when I stop u-boot, u-boot tell me that nand command
> don't exist.
>
> Some one can help me to insert nand comand in u-boot?

It seems you should add a new board definition to your custom board,
if this is not mx28evk.

-- 
Otavio Salvador                             O.S. Systems
E-mail: otavio@ossystems.com.br  http://www.ossystems.com.br
Mobile: +55 53 9981-7854              http://projetos.ossystems.com.br

