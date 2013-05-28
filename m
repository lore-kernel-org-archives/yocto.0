Return-Path: <erik.boto@pelagicore.com>
Received: from mail-oa0-f49.google.com (mail-oa0-f49.google.com
	[209.85.219.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3803E014FB
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 05:36:37 -0700 (PDT)
Received: by mail-oa0-f49.google.com with SMTP id k14so9739749oag.22
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 05:36:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=1fuUMQRg/Z7ztM3MmQIinT81eQW+TDUQ7XKQihfGCXE=;
	b=AXzmauGqoWqji8xfUXgt1aswiDMGRuJNc0Cb2l3IGLy1dOveS3YDC/61dpOh0evqPx
	rv0pxptTpRjUTI4oNcb1AFsjIdLkEtm2J1P503Uu1P9VmlQLMJenwL8SmWx8DNPdjpiA
	m7vifFUk6X4nTZ4Ngf/apaB+/GrlEXkgKc/owlg6MvqzrEJAZMcPeV97wTwRCI6vrKai
	CUCJzVG2j4tiPGiSoT3ZraFnj1yVNgUdLiwQX2zKBt+bbfwNa0vccq2Ce1UQnMoti6Vj
	688QMs0nIXIpJvZR3CJu4n+Yg5UJoBepdNEFoctxoL6pOK+O4gw0wZ3Te9AVZonKP7zc
	Op5Q==
MIME-Version: 1.0
X-Received: by 10.182.246.227 with SMTP id xz3mr20507750obc.67.1369744597004; 
	Tue, 28 May 2013 05:36:37 -0700 (PDT)
Received: by 10.76.12.41 with HTTP; Tue, 28 May 2013 05:36:36 -0700 (PDT)
In-Reply-To: <CAAGt+t3VG6hNg1eN8J9Js=sR14nzQg-EsTUzh_7Y2H1nNnzcvQ@mail.gmail.com>
References: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
	<1430863.Eq8UUOJMnE@helios>
	<CAAGt+t3VG6hNg1eN8J9Js=sR14nzQg-EsTUzh_7Y2H1nNnzcvQ@mail.gmail.com>
Date: Tue, 28 May 2013 14:36:36 +0200
Message-ID: <CA+AhUGy_+4H9K_eWDdPdziYb90EtSsC40voGc=JsVMBknpJYcw@mail.gmail.com>
From: =?ISO-8859-1?Q?Erik_Bot=F6?= <erik.boto@pelagicore.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
X-Gm-Message-State: ALoCoQlNZbyeWlZclSXwCzc75JyPRvzYXAlpzlA+N16+qHJRlaIgTNRt0QDRNYSkDUZ4UDgk+z95
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: Hello world-Checksum error
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
X-List-Received-Date: Tue, 28 May 2013 12:36:37 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, May 28, 2013 at 2:32 PM, Zafrullah Syed
<zafrullahmehdi@gmail.com> wrote:
> Hi Paul,
>
> It's the same error:
>
> ERROR: ExpansionError during parsing
> /home/siguser/yocto2013-05-08/poky/meta-bebot/recipes-bebot/hello/hello.bb:
> Failure expanding expression ${@bb.fetch.get_checksum_file_list(d)} which
> triggered exception NoMethodError: Could not find a fetcher which supports
> the URL: '{ftp://ftp.gnu.org/gnu}/hello/hello-2.7.tar.gz'
> ERROR: Command execution failed: Exited with 1
>

Looks like you still have {} in your SRC_URI, use:

SRC_URI = "ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz"

Cheers,
Erik

> I found something similar at the end of this:
>
> https://lists.yoctoproject.org/pipermail/yocto/2012-January/006660.html
>
> Any hints?
>
> Thank You,
>
>
> On Tue, May 28, 2013 at 2:14 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>>
>> On Tuesday 28 May 2013 13:46:26 Zafrullah Syed wrote:
>> > I am trying to add Hello world recipe, everything was going good but
>> > after
>> > giving bitbake <target> command it breaks with the following error:
>> >
>> > siguser@siguser:~/yocto2013-05-08/poky/build$ *bitbake
>> > gumstix-console-image
>> > *
>> >
>> > ERROR: ExpansionError during parsing
>> >
>> > /home/siguser/yocto2013-05-08/poky/meta-bebot/recipes-bebot/hello/hello.bb:
>> > Failure expanding expression ${@bb.fetch.get_checksum_file_list(d)}
>> > which
>> > triggered exception NoMethodError: Could not find a fetcher which
>> > supports
>> > the URL: '${ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz'
>> > ERROR: Command execution failed: Exited with 1
>> >
>> >
>> > *My hello.bb file is*:
>> >
>> > DESCRIPTION = "GNU Helloworld application"
>> > SECTION = "examples"
>> > LICENSE = "GPLv3+"
>> > LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
>> > PR = "r0"
>> > SRC_URI = "${ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz"
>>
>> That should be:
>>
>> SRC_URI = "ftp://ftp.gnu.org/gnu}/hello/hello-2.7.tar.gz"
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>
>
>
>
> --
> Regards,
> Zafrullah Syed
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

