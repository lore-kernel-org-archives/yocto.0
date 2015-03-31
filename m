Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E319E0085D; Tue, 31 Mar 2015 04:41:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-yk0-f172.google.com (mail-yk0-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A027CE00854
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 04:41:36 -0700 (PDT)
Received: by ykeg184 with SMTP id g184so4813564yke.2
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 04:41:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=RSiG0AD8+MLZVANC4WTWfB4yBq9DJPdaXUKkm7oteX0=;
	b=BDXPdaY8Z2Zkwk3YklIwMxGO5naGE08M2ns+7W9ETOSnuiPQ7qqJb3js/rluxqnoxu
	eRzLdBo82O/jojN07l5MDUKvG7WSnMjy+B5/k+IZy7YzXm6MPqvMCu7ukBCY4P3F9Or5
	mQf2oYmjWBzOz7cYICQK4f7HDrC5L8M/FUMW5oMNSwYQsbqIrtq6wQ1ShF++2tYPq4Sv
	Qof6iyvnJD8HVRG5K4+8DXywpGgu5o9pJbVhzsPKOBQUIN+ZXvm5bZ3mMP889qBVIXKD
	8fl/HUm6fG+RYXfpIEuk3vhZnyvEKuBDTiqWR7A7ldTE3mEjpJmFMfEUUeSaF9lO9BCW
	us0g==
X-Gm-Message-State: ALoCoQlMfaEzs/EnF1Us4VLYMrqUW/2hcqPEFWJYJAtiwQN3wkhC9q/fgz7uLTpYb5y0fzXKTMax
MIME-Version: 1.0
X-Received: by 10.52.7.106 with SMTP id i10mr38472890vda.11.1427802095737;
	Tue, 31 Mar 2015 04:41:35 -0700 (PDT)
Received: by 10.52.124.37 with HTTP; Tue, 31 Mar 2015 04:41:35 -0700 (PDT)
In-Reply-To: <CAPhnLPADsigrXe6HZ0sLakyELujxid+19m18awYQetoUBUD9KA@mail.gmail.com>
References: <1427468590-6615-1-git-send-email-elizabeth.flanagan@intel.com>
	<1779560.QYRt8DUNQe@peggleto-mobl.ger.corp.intel.com>
	<CAPhnLPADsigrXe6HZ0sLakyELujxid+19m18awYQetoUBUD9KA@mail.gmail.com>
Date: Tue, 31 Mar 2015 12:41:35 +0100
Message-ID: <CAPhnLPChugrVf9BvKjTn_9LCeLQPXMHuVHNQHF__Ntdv9JY0DQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH][yocto-docs] poky.ent: Ubuntu based systems need xlstproc
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
X-List-Received-Date: Tue, 31 Mar 2015 11:41:38 -0000
Content-Type: text/plain; charset=UTF-8

On 31 March 2015 at 12:38, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> On 28 March 2015 at 04:23, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
>> Hi Beth,
>>
>> On Friday 27 March 2015 15:03:10 Beth Flanagan wrote:
>>> xlstproc is needed for doc building. I'm sure others are
>>> effected as well.
>>>
>>> Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
>>> ---
>>>  documentation/poky.ent | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/documentation/poky.ent b/documentation/poky.ent
>>> index 5d12fc1..a8fe99f 100644
>>> --- a/documentation/poky.ent
>>> +++ b/documentation/poky.ent
>>> @@ -59,7 +59,7 @@
>>>  <!ENTITY OE_INIT_PATH "&YOCTO_POKY;/oe-init-build-env">
>>>  <!ENTITY OE_INIT_FILE "oe-init-build-env">
>>>  <!ENTITY UBUNTU_HOST_PACKAGES_ESSENTIAL "gawk wget git-core diffstat unzip
>>> texinfo gcc-multilib \ -     build-essential chrpath socat">
>>> +     build-essential chrpath socat xsltproc">
>>>  <!ENTITY FEDORA_HOST_PACKAGES_ESSENTIAL "gawk make wget tar bzip2 gzip
>>> python unzip perl patch \ diffutils diffstat git cpp gcc gcc-c++
>>> glibc-devel texinfo chrpath \ ccache perl-Data-Dumper perl-Text-ParseWords
>>> perl-Thread-Queue socat">
>>
>> Which doc building? Our manuals or docs as part of recipes? Can you give an
>> example of a failure?
>>
>
> yocto-docs. On an Ubuntu based system I was having issues building
> them because xsltproc wasn't installed during the normal system
> install. I'm not sure if other can verify that, but I tried it on two
> of my systems with the same results (Mint 17.1 Rebecca).
>
>> Thanks,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>
> -b
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release

What I'm seeing:

pidge@fuath:~/yocto-docs/documentation make DOC=yocto-project-qs

******** Building yocto-project-qs

cd yocto-project-qs; xsltproc --xinclude -o yocto-project-qs.html
yocto-project-qs-customization.xsl yocto-project-qs.xml; cd ..
/bin/sh: 1: xsltproc: not found

******** Building eclipse help of yocto-project-qs

cd yocto-project-qs && \
        xsltproc --xinclude \
                --stringparam base.dir 'html/yocto-project-qs/' \
                -o eclipse/yocto-project-qs.html \
                yocto-project-qs-eclipse-customization.xsl
yocto-project-qs.xml && \
        mv eclipse/toc.xml eclipse/yocto-project-qs-toc.xml && \
        cp -rf figures eclipse/html/yocto-project-qs/ && \
        cd ..;
/bin/sh: 2: xsltproc: not found
make: *** [eclipse-generate] Error 127

apt-get install xsltproc resolves the issue.


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

