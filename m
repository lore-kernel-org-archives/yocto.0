Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F24EBE006CC
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 08:01:35 -0800 (PST)
Received: from mail-qc0-f198.google.com ([209.85.216.198])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 22 Jan 2013 08:01:10 -0800
Received: by mail-qc0-f198.google.com with SMTP id l35so11668167qco.1
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 08:01:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-received:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type:x-gm-message-state;
	bh=EH5e3eugSCIqH8npR4ueIkj8RfEniQCsAR0E+TMY1cg=;
	b=WS9pk4D7gmrVAUbnLp/t56d0DR7TVBJvznVUFBjdY0nFO5I34XFQvfis3oACirMG3r
	jYWpc78iSLYP9Gykij7eKdky4b4FHA0aDlyZDBD60ukF2NaW6HxlzjyqrtVZ89QjS3ym
	ggBLA2vDVmfUVx9wQPK4HemIykz2wbqA98OnMajg5cg4ff8H2C/OeCdoKmTDcvCUNUWw
	ya42qbSXcQCk1YBmS3GJqDsmDcsFHPD1dKMcHR4PYoubkZI3sKujIdhTOXD3ZBZLKUSl
	k5yqAkBoOxb2iD83F4WsIJiV0n1Kiye9yLRshtfIj+oLVwn2HWOz3882lNJ3TXdoAw5A
	f3pQ==
X-Received: by 10.49.29.135 with SMTP id k7mr27665190qeh.39.1358870469246;
	Tue, 22 Jan 2013 08:01:09 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.49.29.135 with SMTP id k7mr27665177qeh.39.1358870469101;
	Tue, 22 Jan 2013 08:01:09 -0800 (PST)
Received: by 10.49.128.234 with HTTP; Tue, 22 Jan 2013 08:01:08 -0800 (PST)
In-Reply-To: <20130122112628.E460120DA8C@gemini.denx.de>
References: <20130122070331.C3B6120DA8C@gemini.denx.de>
	<33115ABC4887814E8A92A08FBC93416B08DC598A@IRSMSX103.ger.corp.intel.com>
	<20130122112628.E460120DA8C@gemini.denx.de>
Date: Tue, 22 Jan 2013 08:01:08 -0800
Message-ID: <CAPhnLPCk8byBnRSEB2aMOBPEmZQRfWpNSJ+xj+uX4BVvHKMf=Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Wolfgang Denk <wd@denx.de>
X-Gm-Message-State: ALoCoQlk8xph78IKRxEpAohUH/Hp2ChI5CtZANMTdxF1zV7tyWtVCaKAUKOnUOczh2ZJmZMth8WqhH9+mWJrnAqqFkfMUpHgS8rw7M1OzsbqnHzm3y3GW8sOoJyyrLK1Kgw1GfHmK3ugGoEjKkpMCilmt0NGoNlMkQ==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: M2, M3, M4 milestones available?
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
X-List-Received-Date: Tue, 22 Jan 2013 16:01:36 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jan 22, 2013 at 3:26 AM, Wolfgang Denk <wd@denx.de> wrote:
> Dear Cornel,
>
> In message <33115ABC4887814E8A92A08FBC93416B08DC598A@IRSMSX103.ger.corp.intel.com> you wrote:
>>
>> From a QA point of view, we are approaching the 1.4 M3 milestone.
>> Here is what Saul wrote for the latest Full Pass request:
>>
>> "
>> QA Teams:
>>
>> Please do FULL Pass testing on this as a PRE-M3 Full Pass so we have
>> some idea of what's going on.
>>
>> Git Rev: 9eb88ceb39b7d0b8ddc6487e61ce8edadef10ec4
>> "
>
> OK, so we have not reached M3 yet.  Thanks.
>
> Would it not make sense to regularly update the release schedule web
> page [1] so that it also reports the current state?  or is there any
> other web page where such information is present?
>
> [1] https://wiki.yoctoproject.org/wiki/Yocto_1.4_Schedule
>
>
>> 1.4 M2 was kind of blurry because it landed during charismas and new
>> year thus many of us were on vacation.
>
> So what exactly is the git commit ID of the 1.4 M2 milestone release?
> I cannot see any matching tag in the git repository?

That is because we have merged M2 and M3. See:

http://article.gmane.org/gmane.linux.embedded.yocto.general/11075/match=merging+m2

-b

>
> Best regards,
>
> Wolfgang Denk
>
> --
> DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
> If you use modules, you pay the price. Sane embedded solutions
> running in "tight" environments don't use modules :-)
>     -- Benjamin Herrenschmidt in <1258234866.2140.451.camel@pasglop>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

