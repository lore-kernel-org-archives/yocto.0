Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3A82E0076C; Thu, 25 Sep 2014 08:44:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alberk[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE2EBE0074B
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 08:44:26 -0700 (PDT)
Received: by mail-qc0-f178.google.com with SMTP id x13so5169598qcv.37
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 08:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=DNnW/MQlr7o2cuif+pO3u4/0YnLDuUP/Um1JbQmMkgg=;
	b=Pcz8BvhdOCGs6pgKXOlNgoz0ZoivPTozSp1NpCXwwjkfOUmpnrQ1G0WkwKrVsBvMrg
	rwKg+u1v+7M60hFUKbZTdqrSdU2MOhBYO2guj7IeMkn8xeA8PiY+ETTjDVNHGDHHzLCo
	Ubd6CYo9zrVoLXe762Uv/UiozXuI8KjaThHMFnY7mWxUVt++jqWm5GvtlI8YA87jdbj3
	ArSdcKhbOgVbH8Yyr/OMwVMRn1QrBiLFWl0GLk8gLd5tU1HFe6Kqi+FBNOuyx+2zeUXG
	zylODKlHg3LxrHzvoF1kX7T4Qog3cIcHGKqriWaZnIcuJ0GIXy+U+eMTDXCHAmD0+Rua
	0IXA==
MIME-Version: 1.0
X-Received: by 10.224.38.68 with SMTP id a4mr19587280qae.85.1411659864992;
	Thu, 25 Sep 2014 08:44:24 -0700 (PDT)
Received: by 10.140.44.68 with HTTP; Thu, 25 Sep 2014 08:44:24 -0700 (PDT)
In-Reply-To: <CAJTo0LavF4uPYu8wjmFpfwW3cLK5SrAu6KH-WO37ekJpZ_Rguw@mail.gmail.com>
References: <CACjDgAPJAqtkL6pP-_ncoE18KsDfM2k0pGpbN8VYkV9QM5X1uA@mail.gmail.com>
	<CAJTo0LavF4uPYu8wjmFpfwW3cLK5SrAu6KH-WO37ekJpZ_Rguw@mail.gmail.com>
Date: Thu, 25 Sep 2014 23:44:24 +0800
Message-ID: <CACjDgAPfbpCggWFSJqatH6tQUCACvJU8sCAktFf-8bSCNZwQdQ@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recipe for HHVM?
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
X-List-Received-Date: Thu, 25 Sep 2014 15:44:40 -0000
Content-Type: text/plain; charset=UTF-8

I took a look and this an empty recipe. :(

On Thu, Sep 25, 2014 at 11:19 PM, Burton, Ross <ross.burton@intel.com> wrote:
> On 25 September 2014 16:13, Albert K <alberk@gmail.com> wrote:
>> Hi,
>>
>> Does anyone know if there exist an recipe for HHVM?    Thanks.
>>
>> https://github.com/facebook/hhvm
>
> The layers index is the place to look:
>
> http://layers.openembedded.org/layerindex/branch/master/recipes/?q=hhvm
>
> But that's not a recipe for HHVM itself.
>
> Ross

