Return-Path: <ndec13@gmail.com>
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CE4EE01496
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 12:05:50 -0700 (PDT)
Received: by mail-ob0-f179.google.com with SMTP id oi10so2735232obb.24
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 12:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=uRvuVDMT873G0zRvTLdV1/TDkei5deEqltzHvYbgsRQ=;
	b=W6XCtagd67c4CDkYFhCuvV1qz86wKp8qpdI0c0pwok3L/LPzVRB6RO6g6YmuefNq95
	O5nof5hnSDErXTdKpUCiXEghXxtr7LqeY8j+SCv3rA3dao5ZLmvTqJGIBoOQ05KXsWtj
	6bq7GeuTiz7lJ4jqUuTbkD4FBr/7L1OYoLX1rtpdvbFdomj+u8rZ159G00eyPaJI/3kb
	ISytN+0dNAG/ulKY3TuCi/4QeEnEiwosZnaW8gATlpbfndKI3OCAZjxhMsF//x7R5Bx3
	UCn9zlriunpFt2ZQ55ss0t8kF1Cjjr4vh/vOk6aNiMhSRJAIfupbbHzB4X7NKHVlf37n
	q57g==
X-Received: by 10.182.160.106 with SMTP id xj10mr20323566obb.98.1366916750169; 
	Thu, 25 Apr 2013 12:05:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.27.170 with HTTP; Thu, 25 Apr 2013 12:05:30 -0700 (PDT)
In-Reply-To: <CA+YB3rZELOm4yvYoFeR7==W-Kzi=Xye3hN3XKcV+wJBHXXwuWQ@mail.gmail.com>
References: <CAOT3miJ_akhKUidZi-0NsA-h7bMtOSrFm+BxGadopC-4qDb1gw@mail.gmail.com>
	<CA+YB3rZELOm4yvYoFeR7==W-Kzi=Xye3hN3XKcV+wJBHXXwuWQ@mail.gmail.com>
From: Nicolas Dechesne <ndec13@gmail.com>
Date: Thu, 25 Apr 2013 21:05:30 +0200
Message-ID: <CAOT3miLe3ZF3ZggpvMfZ=jbH+zjww_UBBJ0vN3F2R_o2_Mq9zA@mail.gmail.com>
To: Jeff Osier-Mixon <jefro@jefro.net>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Compliance program questions
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
X-List-Received-Date: Thu, 25 Apr 2013 19:05:51 -0000
Content-Type: text/plain; charset=ISO-8859-1

Jeff,

On Thu, Apr 25, 2013 at 7:52 PM, Jeff Osier-Mixon <jefro@jefro.net> wrote:
> Hi Nicolas, thanks for asking these questions. We are in the process
> of revising the documentation and application forms for that program,
> so your questions come at a very good time.

thanks a lot for your quick answer, and I am glad that it's right on time!

>
> I have a few answers:
>
> On Thu, Apr 25, 2013 at 8:36 AM, Nicolas Dechesne <ndec13@gmail.com> wrote:
>> Hi there,
>>
>> I have a couple of questions regarding the compliance program. If
>> there is a better place for asking such questions, please let me know.
>>
>> I have studied the Yocto compliance documentation, [1] on the website,
>> and I have the following questions:
>>
>>  - is there any 'practical' guide with "do's and don'ts" to help make
>> a sucessful Yocto Project Compatible registration?
>
> We don't have a guide like this, but I can create one. I'm guessing
> you are looking for guidance on how to answer individual questions as
> well as how one answer affects the others, is that correct?

Yes my questions below are clearly good target for such a 'compliance' tutorial.

>
>>  - i understand that while the project should build with the OE core
>> toolchain, it is not required to use the OE core toolchain 'by
>> default', so we should be able to provide our own modified/customized
>> toolchain in our layers, is my understanding correct?
>
> Yes - the project needs to be able to build with the standard
> toolchain, but you can provide your own as well.

ok.

>
>>  - it is recommended, but not mandatory not use the Yocto kernel, so
>> we can use any mainline version in our BSP layers, right?
>
> I believe this is the case, but I'll need to research & get back to you.

at least meta-arago seems to provide a couple of kernel, so i expect
it should be ok, but worth checking.

>
>>  - is it tolerated to change the versions of some components from
>> OE-core or meta-oe? Not just add patches through .bbappend, but
>> actually use an older or a more recent version of components, let's
>> say Gstreamer for example?
>
> I don't think we require specific versions of any packages, but again
> I'll have to research first.

that question is currently the most important for me, so please let me
know. again, just to avoid any confusion, we would need to downgrade
several recipes to older versions. the idea would be to import such
recipes from OE tree history if they ever existed, or create them from
scratch, if needed.

>
>>  - can we included new recipes for software programs not already
>> included in oe-core or meta-oe in our layers, or do we have to
>> contribute them back into oe-core or meta-oe before registration?
>
> Yes, you can include new recipes (and packages).

ok.

>
>>  - the Yocto project compatible registration is made against a
>> specific version of Yocto. What happens when a new Yocto version is
>> released? Should we go through the registration process again?
>
> That is a question we have discussed quite a lot. The plan of record
> is for YP Compatible products/projects to resubmit the form after
> testing with the new version. However, that does create a problem if
> someone has, for example, a dozen YP Compatible products. Plus, what
> happens with point releases? These issues are under discussion & I'll
> report back as soon as I have clear answers.

ok, thanks again. looking forward for your next set of answers.

