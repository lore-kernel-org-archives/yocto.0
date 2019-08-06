Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3F7EE00D4F; Tue,  6 Aug 2019 05:45:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
	[209.85.210.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8500BE00A93
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 05:45:44 -0700 (PDT)
Received: by mail-ot1-f68.google.com with SMTP id l15so34844017oth.7
	for <yocto@yoctoproject.org>; Tue, 06 Aug 2019 05:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZdpBDVyMFjG58Lllwr91Uz+8rmQbocQl/B3shPOU/aU=;
	b=JynRntR2lhrllUHLn+q5SI28qhNmhIjAW1r5w3GrpN9QnyPLKJhvu5NoBIUU63ypt6
	Nj5zQKkVHbe0DEnEeeVSrn+d0/Rg6W30G+jObLT3cGvr1yBtUQN1vJvuqm4WOfjR9K5h
	W0swt+wNb5LVGmHRXYN7gWYR0Kavutj7HvHuWgJMbx+c7IaGCsSBW0x3/OhOIz55HUni
	LyLSGlj8wUtFuq9Jzw4hqgbSx7KefJBhuzMlnXeGfKLThLAP/URf5ImpPcHRT8R5Dw1W
	PyMnu54uua7T4a8844Sgiu6SZP3KYt/l2btOWn0eRpQ7nGinq6/VXZGwgYc7Y65jUyOW
	U3VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZdpBDVyMFjG58Lllwr91Uz+8rmQbocQl/B3shPOU/aU=;
	b=Eo170H/4qg+s5YxxqNctoBZRVEqUYFUG90aS2CaJo4pBWazxx9elcsbt5UlWVWSSLD
	SYmyunydSOVAWA4LZ8BJZG4SrsE+aaoc/kJkmOzQH1G16YtrMbXBcsqNUMM9HAnvsrQh
	IgkhvM/zL2zN+CIC5rjU+bT4FNT+3F3vxkV1XzoGaWLnZQjzEsjoaLgvYBcoLWgyExrS
	zfv6OtCLS4j7tAxOsWoFXhg8NO9YSlQF8POHU+0aX5uvCJ/I3nGNEl6MqWTw4GNImBl6
	Xk3I8k2+BFkMP+UY/A+LXeXzX4+3339Dw49BHOwWMnOCosEahGKGa80WB//J16xT2SO5
	GXZA==
X-Gm-Message-State: APjAAAXtmgfeen7naaR8hzXIRuNz1YLC5ed8Y1MvjONCixNWqYcH3Sxx
	tQ6V5FwIbq7LV51RLOznYSfImGD5lZlhdwrHpcc=
X-Google-Smtp-Source: APXvYqxSINo8FXR29JPML8nU7untITNwUA7GjGnXwo+k2pGwhygg3yGEt05ThBAHuUuVAo+TLp1TMoF55KU1m0vCFqk=
X-Received: by 2002:a5e:c247:: with SMTP id w7mr3470275iop.72.1565095543978;
	Tue, 06 Aug 2019 05:45:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Tue, 6 Aug 2019 05:45:43 -0700 (PDT)
In-Reply-To: <CANNYZj-osAvfX3ga98oQSegsewdKixxFjd7RYuYG6uJGg8qoFw@mail.gmail.com>
References: <CAA=hcWSByxp8OR09orkP6RO9uto6Dpf0rZmsGWigW0yQ82P=0g@mail.gmail.com>
	<CAA=hcWRHaOj+24TYr9WBcaZqBbTjn-6BXjdG+Q=dEe3J355gBA@mail.gmail.com>
	<CANNYZj-=r2pf7bKNYjT+=j=rWC_ajYxZ2jUR5OQxpzpiEw-Egw@mail.gmail.com>
	<CAA=hcWQYO82WQiqwQvEgwbX3EwG+yLNWoWtT0WZR=m7zfdO3aA@mail.gmail.com>
	<CANNYZj-osAvfX3ga98oQSegsewdKixxFjd7RYuYG6uJGg8qoFw@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Tue, 6 Aug 2019 22:45:43 +1000
Message-ID: <CAA=hcWTZ4Ob=5+OZk9MowBw-Rc85Z9MXGKq4Hqs+=L=_c_KAdQ@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: QA issue applibrary rdepends on app-dev [dev-deps], where is the do_package_qa?
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
X-List-Received-Date: Tue, 06 Aug 2019 12:45:45 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks Alex, here is the error in my application build, it used working well:

ERROR: app_library-1.0.0-0 do_package_qa: QA Issue: app_library
rdepends on app_library-dev [dev-deps]
ERROR: app_library-1.0.0-0 do_package_qa: QA run found fatal errors.
Please consider fixing them.
ERROR: app_library-1.0.0-0 do_package_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/home/build/tmp-glibc/work/cortexa7t2hf-neon-oe-linux-gnueabi/app_library/1.0.0-0/temp/log.do_package_qa.6626
ERROR: Task (/home/build/oe-core/../meta-app/recipes-core/app_library/app_library_git.bb:do_package_qa)
failed with exit code '1'

There is no do_package_qa in my app_library_git.bb, where is that
do_package_qa from? how can I disable it? It sounds every easy in the
document to disable it, but it did not give any clues -:(.

Thank you.

Kind regards,

- jh
On 8/6/19, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
> It may help if you copy-paste the exact error you are getting, and the
> content of the directory where it happens.
>
> Alex
>
> On Tue, 6 Aug 2019 at 13:09, JH <jupiter.hce@gmail.com> wrote:
>
>> On 8/6/19, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>> > You don't; package_qa is reporting real issues with your packaging, so
>> you
>> > need to address them.
>>
>> Well, my first issue is I need to build it, the document said it can
>> be disabled, but did not say how, appreciate anyone helps how to
>> disable it.
>>
>> Thank you
>>
>>
>> > Alex
>> >
>> > On Tue, 6 Aug 2019 at 10:40, JH <jupiter.hce@gmail.com> wrote:
>> >
>> >> Hi,
>> >>
>> >> According to the latest document:
>> >>
>> >> "Package QA checks are now performed during a new do_package_qa task
>> >> rather than being part of the do_package task. This allows more
>> >> parallel execution. This change is unlikely to be an issue except for
>> >> highly customized recipes that disable packaging tasks themselves by
>> >> marking them as noexec. For those packages, you will need to disable
>> >> the do_package_qa task as well."
>> >>
>> >> How can I disable the do_package_qa task?
>> >>
>> >> Thank you.
>> >>
>> >> Kind regards,
>> >>
>> >> - jh
>> >>
>> >> On 8/4/19, JH <jupiter.hce@gmail.com> wrote:
>> >> > Hi,
>> >> >
>> >> > I was running my Yocto build fine until I had a minor change to move
>> >> > libapplibrary.so to libapplibrry.so.${PN} and made libapplibrary.so
>> >> > to
>> >> > a symbolic link of libapplibrry.so.${PN}. Now it got an error of QA
>> >> > issue applibrary rdepends on app-dev [dev-deps], QA run found fatal
>> >> > errors, please consider fixing them.
>> >> >
>> >> > Even I reverse the changes back the, it still complained the same
>> >> > error.
>> >> >
>> >> > I don't have do_package_qa in my bb file, where is it from? What is
>> >> > that error about? How to fix it?
>> >> >
>> >> > Thank you.
>> >> >
>> >> > Kind regards,
>> >> >
>> >> > - jh
>> >> >
>> >> --
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/yocto
>> >>
>> >
>>
>

