Return-Path: <jatedev@gmail.com>
Received: from mail-qc0-f177.google.com (mail-qc0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7556E00AE2
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 09:20:47 -0700 (PDT)
Received: by mail-qc0-f177.google.com with SMTP id w7so1162629qcr.8
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 09:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=W8nkdEhVDQbEubvyyxZLZsxgArdY0ZKr9qKLjCI0Ais=;
	b=LMBE0FdGaEVPBkzfeMGVl+TmOqJeuDxtVBlavK3IyhHWruxcmUqpXbsLdLsoKAk++a
	1Vm9JGtA7oowIjPMZkv9baHFfe9oA9+0qnmzYXcYp4HpQU4LBjJGTIDTFuw+qzlajvi7
	i/oCeP/sHw2bmL2T8uf1JH+BjedUQd3F/Tw5DQM9NXGBNU6Kzo3ryz/5ozaruijvcPGG
	jcamCgl6hkk1K6oJ/AbYyNEkb2qX67X66ugPbWltPbfwL3nB6hu1ANl34ul0PMZXDXjG
	YV67flG84a6ykGzNTDchY9LDHQOurVTpm9c8BtI0J9q5oeHxkQrgQznM1feS/fz9sDGz
	X+5A==
MIME-Version: 1.0
X-Received: by 10.224.14.77 with SMTP id f13mr58889462qaa.31.1398270046844;
	Wed, 23 Apr 2014 09:20:46 -0700 (PDT)
Received: by 10.140.95.111 with HTTP; Wed, 23 Apr 2014 09:20:46 -0700 (PDT)
In-Reply-To: <CAPhnLPAOc2mN3-QhG0BM5jN5ENCHXfP52hi6ETbrj=OLOU8jWQ@mail.gmail.com>
References: <CAPphmgbuaWBpsSszJ=5e+g=pjeE97_9XU5a7JQbzOfM-VQTQrQ@mail.gmail.com>
	<CAPhnLPAOc2mN3-QhG0BM5jN5ENCHXfP52hi6ETbrj=OLOU8jWQ@mail.gmail.com>
Date: Wed, 23 Apr 2014 12:20:46 -0400
Message-ID: <CAPphmgb=b=Wuz05tKRt6NGQ6AWHioRw=gwOhWDAGai7G++JPCw@mail.gmail.com>
From: Jate S <jatedev@gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: autobuilder repourl by commit
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
X-List-Received-Date: Wed, 23 Apr 2014 16:20:48 -0000
Content-Type: text/plain; charset=UTF-8

I am on yocto-autobuilder dora branch. I would like my Nightly
scheduler check out some layers using the 'hash' repo setting. The
default behavior seems to be that a nightly build does not receive
'commit_layername' information, and thus the CheckOutLayers object
just uses the HEAD.

Where might I go about passing these properties in so that
CheckOutLayers will use my 'hash' setting?

- Jate S.

On Thu, Apr 17, 2014 at 2:09 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> Jate,
>
> You can use the 'hash' property. Just make sure you have no other
> branch/tag properties in the repo description.
>
> So, something like this should work:
>
> repos: [{'poky':
>             {'repourl':'git://git.yoctoproject.org/poky',
>              'hash':'7831ae829103ab283645'}},
>
>
> On Thu, Apr 17, 2014 at 10:23 AM, Jate S <jatedev@gmail.com> wrote:
>> I am customizing the Yocto autobuilder for my own project. I would like to
>> specify a checksum for the repourl for poky. What property do I need to add?
>> I have tried adding the property commit, but it does not appear to work.
>>
>> Thanks,
>>
>> - Jate S.
>>
>
>
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release

