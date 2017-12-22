Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5AA5E00D9D; Fri, 22 Dec 2017 09:10:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00EF1E00D1C
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 09:10:27 -0800 (PST)
Received: by mail-oi0-f50.google.com with SMTP id t81so19320674oih.13
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 09:10:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=ZE1bf1dZvXAxfNEi8B4diijBCig9cLpo2c9z9I1Nguc=;
	b=Be4nE1KSbKC3HHnWRRwp8v7qp1oO9DVxo4sboIEmk7wfcjKinpiMG/6RypqdhliE6V
	/n0pxcHMbvXvBByAvfT02GBF8vKtl0rpqniAHSLAt3VZsiGi2N5RmJvPgeF1oBd6w/6j
	Ab5U7U5eNhfX5QfsdQ7FvjN510X8YU+h6gGxFZp9CYQC2exmFTA6q8lXoPG+eCaoWoCa
	EQJsJFwj4ouIQqod94RvcFv1Btbu4JdtcA/aEI7NDr+bJxAKL1YTCwqrTI98uMYeQ3xq
	roOvZFlC9EV6sxZmsTgIXYJ1zJ296eBaFCmATkL+2V63xsMzttsdZBVmqT/DMEuh7qgc
	6U+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=ZE1bf1dZvXAxfNEi8B4diijBCig9cLpo2c9z9I1Nguc=;
	b=ml55jcO7Xta6SdsVR7OBqirgN/5gWWPibbpydHVwzsj+I2sldvUqKBgPxDPlW2o0D8
	KMWsB6WDl4OLsE+Xd+vbXivtIervBGvWkqKGwSBbVQsUbVG4LTHwDFnVC6EwRa0kLdeY
	XxlPo3Do2R3NhB+SeAmLkewc4iYcRNrrjT7tHVU3aWAwBABigEtYn4Y1VJhu+QAk/ZQ1
	eamUuKPM/uz2xO1P86aPgQ4cz38GR5u3WYZBq8aGJZfTziU0Mf4+ZxUj7wc9fJW28mn8
	mZzW+D3ceyUdzXLRI+VkMgvS/0KRVoHcliXJGxVgqRTXgbII3DfkSBTFlojM7paLTp+e
	IgWw==
X-Gm-Message-State: AKGB3mL93Y8G17gOHTxE8t6MvMQ3IH/s/VKXMR1hDkp67gBJ+0/HJ5yD
	bziD7NkkbUTA5uXRzBmh5T8Ik8C2yJcy9c0XCON6WxEf
X-Google-Smtp-Source: ACJfBosiERrK86ekHtcwMNOWmO1Kpl4WuyNI9U4emAdhIJzkG0V7mkVST+b2BrBdaSpJjDic84derb0FmUoosW2JA2c=
X-Received: by 10.202.243.198 with SMTP id r189mr10508631oih.198.1513962626916;
	Fri, 22 Dec 2017 09:10:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.194 with HTTP; Fri, 22 Dec 2017 09:10:26 -0800 (PST)
In-Reply-To: <CAOT_U5Zb+aMyseXVPpjYxG_9TPD2nxa_Rvgu_z7N6qS1kBFGMg@mail.gmail.com>
References: <CAOT_U5Zb+aMyseXVPpjYxG_9TPD2nxa_Rvgu_z7N6qS1kBFGMg@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 22 Dec 2017 18:10:26 +0100
Message-ID: <CAOT_U5YOPe5_sSDu7Kn_9_8znPXJd4=VvdW6FiTeLxc9Pjoi-g@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Python cryptography failing due to undefined symbol: pthread_atfork
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
X-List-Received-Date: Fri, 22 Dec 2017 17:10:28 -0000
Content-Type: text/plain; charset="UTF-8"

I have confirmed that no `-pthread` flags are being set for building
python-cryptography.

Running the following:

    bitbake python-cryptography -c do_compile
    bitbake python-cryptography -c devshell
    grep pthread ../temp/run.do_compile

gives no returns.
Also there isn't a mention of it when doing a build in full
verbose:

    bitbake python-cryptography -c cleanall
    bitbake python-cryptography -vvv | vi -


On the target the symbol is identified as missing (NOTYPE):

    ~# readelf -a
/usr/lib/python3.5/site-packages/cryptography/hazmat/bindings/_openssl.abi3.so
| grep pthread_atfork
    000aebb4  0002d916 R_ARM_JUMP_SLOT   00000000   pthread_atfork
       729: 00000000     0 NOTYPE  GLOBAL DEFAULT  UND pthread_atfork


My current goal is to extend the recipe with the `-pthread` so that
it's there when
the '_openssl' extension is being built.
Still open to suggestions.


A thing that seems to be underlying my assumption is that the recipe
for python-cryptography
hasn't actually changed between Morty (where it worked) and Rocko...

On Thu, Dec 21, 2017 at 6:17 PM, Alan Martinovic
<alan.martinovic@senic.com> wrote:
> Hi there,
> just did a migration to Rocko and am witnessing"
>
>     root@device:~# python3
>     Python 3.5.3 (default, Dec 20 2017, 02:02:22)
>     [GCC 7.2.0] on linux
>     Type "help", "copyright", "credits" or "license" for more information.
>     >>> from cryptography.hazmat.bindings._openssl import ffi, lib
>     Traceback (most recent call last):
>       File "<stdin>", line 1, in <module>
>     ImportError:
> /usr/lib/python3.5/site-packages/cryptography/hazmat/bindings/_openssl.abi3.so:
> undefined symbol: pthread_atfork
>
>
> Have tried both the recipe that comes with Rocko
> and master of meta-openembedded.
>
> Seems to be the same bug as this one:
>
> https://bugs.gentoo.org/630578
>
> resolved with this patch:
>
> https://gitweb.gentoo.org/repo/gentoo.git/commit/?id=c824d1c44fcf4556de21d2c8b8ae3732b0fc0c5b
>
> Can someone provide hints on what would that translate to
>  for the python cryptography recipe?

