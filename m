Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7E85E0078E; Fri, 20 Feb 2015 13:17:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f180.google.com (mail-lb0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40EC4E00289
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 13:17:37 -0800 (PST)
Received: by lbiw7 with SMTP id w7so8770682lbi.9
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 13:17:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=YEnqNWopTfLkeQLwXJFFyt1pMWZxcuHe0t25pm7mB90=;
	b=FAd3jsCaEKk8Pl7DK8C2ypJj2YlylGPW4cW6gCgMSw1QJrBJ3JG8AT64LCpgAo0H4T
	dxvuSvP9mm3YPTiQse1YZYMy2wllW1ANzwfKlMSGqylkTM8I/lYwva6GF2ZtIyh6mWey
	Z3QTqEzfFHMLAm0yGopQQVvEn/78tk3zMi63KHbrNoEK+/GMWfRx1ynG5Q+SNAsds1dK
	2Ln1lwtAPmHGqyJh8TeJiVgd5E5TeaSZzoNSi0VAjPFO5HCrZAIin3M86iq+Vc1dUwC/
	HbRxhwtr1GgVQb0ktyuerbMWXtaOrmCLsQ6Q0wf7COEHQ6kzd55iIHlRhzEKBIyqqNnq
	I4WQ==
X-Received: by 10.112.235.10 with SMTP id ui10mr10359018lbc.77.1424467055128; 
	Fri, 20 Feb 2015 13:17:35 -0800 (PST)
Received: from [192.168.172.3] ([213.132.102.178])
	by mx.google.com with ESMTPSA id ms3sm5018985lbb.4.2015.02.20.13.17.34
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 20 Feb 2015 13:17:34 -0800 (PST)
Message-ID: <54E7A465.3020802@gmail.com>
Date: Fri, 20 Feb 2015 13:17:25 -0800
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: kaiu@gmx.de, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAAKMwiqm0iwzPjUsX127nk==hgQ0OcrrXFnG6brfhAF+DbO5Xg@mail.gmail.com>
In-Reply-To: <CAAKMwiqm0iwzPjUsX127nk==hgQ0OcrrXFnG6brfhAF+DbO5Xg@mail.gmail.com>
Subject: Re: WARNING: Could not copy license file LICENSE -> Downloaded archive structure?
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
X-List-Received-Date: Fri, 20 Feb 2015 21:17:40 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Kai,


On 02/20/2015 06:44 AM, Kai Ulrich wrote:
> Hi,
>
> I working on a smstools3 recipe.
>
> after running bitbake smstools3
>
> I got following
> WARNING: Could not copy license file LICENSE: [Errno 2] No such file or
> directory:
> '/home/kulrich/Develpment/yocto/dizzy/poky/build_test/tmp/work/i586-poky-linux/smstools3/3.1.15-r0/smstools3-3.1.15/LICENSE'
> Function failed: smstools3: LIC_FILES_CHKSUM points to an invalid file:
> .../yocto/dizzy/poky/build_test/tmp/work/i586-poky-linux/smstools3/3.1.15-r0/smstools3-3.1.15/LICENSE
>
> After looking for the LICENSE found it under
> .../yocto/dizzy/poky/build_test/tmp/work/i586-poky-linux/smstools3/3.1.15-r0/smstools/LICENSE
>
> It seams the reason is the Package structure of the smstools3-3.1.15.tar.gz.
> it is
>
> smstools3-3.1.15.tar.gz.
> ---smstools3
> -------src
> -------scripts
> -------examples
> -------doc
> -------uninstall.sh
> -------README
> -------package.sh
> -------Makefile
> -------LICENSE
>
> with a struktur (2) like
>
> smstools3-3.1.15.tar.gz.
> ---smstools3-3.1.15
> -------src
> -------scripts
> -------examples
> -------doc
> -------uninstall.sh
> -------README
> -------package.sh
> -------Makefile
> -------LICENSE
>
> it works fine.
>
> Any idea how I can configure my recipe that that it works with the
> original package structure?
>

You might need to override the source directory in the recipe.

S = "${WORKDIR}/${BP}"

- Armin

> Kai Ulrich
>
>
>
>

