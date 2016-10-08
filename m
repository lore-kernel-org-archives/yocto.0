Return-Path: <bill.randle@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEFA6E00B9C; Sat,  8 Oct 2016 07:29:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bill.randle[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.54 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E4DBE00A65
	for <yocto@yoctoproject.org>; Sat,  8 Oct 2016 07:28:58 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id i130so92678624wmg.1
	for <yocto@yoctoproject.org>; Sat, 08 Oct 2016 07:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=tOhvsU6rJTT3KTO6RYzZAyQuF1IXM82sFD6LR+UQxF0=;
	b=JIaoRt4dDZO2CXsYMmdnwgkUAcTJEbKM9v8p0GUYhikbOddgGXZ38tJswXAnbJOX7S
	7PVBYAczHbeAcDWkx6wLXBH71Ewg9hwD8cNUO4pKC0zW03kxc/hJnmznS6peFBQwLKDd
	KGp5JPkHKl6GscbmHIg0OzrbNGIA7QCgqWqO1gEDwIuzqCQFpZFoAAZrDjXGWVWMJgQT
	u+F2+Wk0dKUTZrv9s6ZaYBZbSiOpWznNki3qVDnqX+FsOinv4sapgU/vwGBnMv1BEaFD
	ordm4Zi136ELiVGVNJ1uaHZLs8zvlTXLx2cB55LoWOksU0TGBJzmL19cJW3E04zhyt9o
	RxdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=tOhvsU6rJTT3KTO6RYzZAyQuF1IXM82sFD6LR+UQxF0=;
	b=BDaOEAH7HUjZUpVRR64jUQxUY7pGKkby2DpdJ9aurTm5z7JlheE4btdnD8OVwzklAO
	Aep+b+qqunsTBWOuSsVQAjgf7X49y0NaGglZmvUoZ6un9TvA9cnl8z1VyZZKQnfSfgwx
	wGqzWRbvJ3kVAyAhF/Pavw619iraXawhce4e5gRUoGrMIqWWpM+YdLYTGY9FBhspJ5wZ
	1kDpspzKrVcvR8qtsvab8crZn8jfPvcfsPAPIlgFXJZb4i+/kqXloUsLyuG5+YYGFEXc
	vxbYKsIm7539smLfTXPlGBGftHad5Vaxg4GfhuaVWY940fAABBcgCmeXvWKNN7jXlnDO
	H9Dw==
X-Gm-Message-State: AA6/9RnzVirdn+AGLNqpBDhlLtO973rDWJvZfHHHnUSwWDmn7o7jmugU3Qzvk2tnAfAl7gJgAm2m/FT5Q9EjMw==
X-Received: by 10.194.7.68 with SMTP id h4mr20452592wja.156.1475936937137;
	Sat, 08 Oct 2016 07:28:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.135.212 with HTTP; Sat, 8 Oct 2016 07:28:56 -0700 (PDT)
In-Reply-To: <56993190d475014fd9f289fdad7db19e@reliableembeddedsystems.com>
References: <e31067aeb8accb65a84da105dad48944@reliableembeddedsystems.com>
	<CA+n--H-B+0MgxB1ztB+Lbw18G9mYEzy=FhAzZnE_R89SYjpL_w@mail.gmail.com>
	<56993190d475014fd9f289fdad7db19e@reliableembeddedsystems.com>
From: Bill Randle <bill.randle@gmail.com>
Date: Sat, 8 Oct 2016 07:28:56 -0700
Message-ID: <CA+n--H8NN32sFJVQFrODtm_99aR5D60kHnK1o0S5B_RWqLfkBQ@mail.gmail.com>
To: gmane@reliableembeddedsystems.com
Cc: yocto@yoctoproject.org
Subject: Re: Y-AB PublishArtifacts toolchain wrong dir
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
X-List-Received-Date: Sat, 08 Oct 2016 14:29:02 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 7, 2016 at 11:27 PM,  <gmane@reliableembeddedsystems.com> wrote:
> Hi,
>
> On 2016-10-07 22:05, Bill Randle wrote:
>>
>> Hi Robert,
>>
>> I see a couple of problems with this proposed patch. First, it's not
>> clear the existing code is broken.
>
>
> Here[1] is a paste of the error.
>
> cp: cannot stat
> '/tmp/yocto-autobuilder/yocto-autobuilder/yocto-worker/res-custom-morty-multi-v7-core-image-minimal-dev-sato-sdk-toolchain/build/build/tmp/deploy/sdk/poky-*i686-core-image*.sh':
> No such file or directory
>
> That's[2] the .conf file which I used.
>
> Note that I'm not building a i686 toolchain, but only the 64 bit version.

All the "standard" build configs produce both x86 and x86_64
toolchains - which makes sense, since it's not known what build host
the user is using and the AB needs to show both are buildable. In your
case, you know you have an x86_64 machine and don't want to bother
building for x86, so, it's seems like the thing to do is check for the
existence of a build package (x86 or x86_64) before attempting the
copy.

> [1] http://pastebin.com/aLyer2fi
> [2]
> https://github.com/RobertBerger/meta-mainline/blob/morty-training-v4.4.x/multi-v7-ml/yocto-autobuilder/res-custom-morty-multi-v7-core-image-minimal-dev-sato-sdk-toolchain.conf
>
> Regards,
>
> Robert

