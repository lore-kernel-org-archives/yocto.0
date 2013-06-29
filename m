Return-Path: <trevor.woerner@linaro.org>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D95E1E01492
	for <yocto@yoctoproject.org>; Sat, 29 Jun 2013 05:26:13 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id ey16so1654618wid.3
	for <yocto@yoctoproject.org>; Sat, 29 Jun 2013 05:26:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=N3baqD2Jjy62a/U0ehKAgWYYVipZS0MCiK8nYtnmjoU=;
	b=jyC1UaD9Fb3sfTTVKf48AMLzgSvafjJmy5M9iylpXX17T9ChFq7wleBm6hknl+juNI
	PWrJFTw5PlmVTtR4M5MzZPTFpWQLx12JZKKfLlTF0BeNvnPsoLpVNTuOnznc98e4fZtz
	DY9sfRNE/boVpDIdz3W3893xNCYxSbzhoQFwB46yMIvIIBlsWojcXIbZTtVbghLoB+n4
	4TcjJz+vZRhfSvdgT52aiveQ+zYtAaWqHjYm3qgCJxDXkogKM00DxgXiCiTGOPSG/Hda
	tzmh+lqNaTQ96LP38uBuRGqjv8wJBGDlsi4CPR3cEVjUbp2Ig72g1Jpmx/74oEEP7qGB
	9D5A==
MIME-Version: 1.0
X-Received: by 10.180.76.206 with SMTP id m14mr6112365wiw.38.1372508772279;
	Sat, 29 Jun 2013 05:26:12 -0700 (PDT)
Received: by 10.14.117.65 with HTTP; Sat, 29 Jun 2013 05:26:12 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF51ADC@ORSMSX101.amr.corp.intel.com>
References: <1372214269-16897-1-git-send-email-trevor.woerner@linaro.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF51ADC@ORSMSX101.amr.corp.intel.com>
Date: Sat, 29 Jun 2013 08:26:12 -0400
Message-ID: <CALmOhg=evL-vyWc5q3Fd=y2GnUz3gfWSUyJDVFG5J=1k2w2L7g@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Gm-Message-State: ALoCoQmFkCD885jEAISNOkkJSy5LfhVYaEIXVOsNC4M0izw8m+Ltp6uUFTWpy71uk289YDHXlgOA
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>, "patches@linaro.org" <patches@linaro.org>
Subject: Re: [yocto-docs][PATCH] dev-manual: referencing bugzilla issues
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
X-List-Received-Date: Sat, 29 Jun 2013 12:26:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

What's odd is that here:

http://lists.linuxtogo.org/pipermail/openembedded-core/2013-April/037826.html

Saul explicitly tells Radu that using the brackets is the correct
format (which is what, I think, caused me to send this patch in the
first place).

I hope Saul notices this thread and comments :-)

On 26 June 2013 00:26, Rifenbark, Scott M <scott.m.rifenbark@intel.com> wrote:
> Trevor,
>
> I use to have [YOCTO #<bug-id>] in the manual just as you do here.  I was told by Saul though that I was not to use the brackets in the commit description.  That is when I took them out of the manual.  Maybe Saul can add more to this explanation.
>
> Thanks,
> Scott
>
>>-----Original Message-----
>>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>bounces@yoctoproject.org] On Behalf Of Trevor Woerner
>>Sent: Tuesday, June 25, 2013 7:38 PM
>>To: yocto@yoctoproject.org
>>Cc: patches@linaro.org
>>Subject: [yocto] [yocto-docs][PATCH] dev-manual: referencing bugzilla
>>issues
>>
>>Based on observations from the various mailing lists, it is obvious that
>>bugzilla issues are almost always referenced using square brackets.
>>
>>Signed-off-by: Trevor Woerner <trevor.woerner@linaro.org>
>>---
>> documentation/dev-manual/dev-manual-newbie.xml | 2 +-
>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>
>>diff --git a/documentation/dev-manual/dev-manual-newbie.xml
>>b/documentation/dev-manual/dev-manual-newbie.xml
>>index 0c849f5..55e0c58 100644
>>--- a/documentation/dev-manual/dev-manual-newbie.xml
>>+++ b/documentation/dev-manual/dev-manual-newbie.xml
>>@@ -1405,7 +1405,7 @@
>>                 references - any commit that addresses a specific bug
>>should include the
>>                 bug ID in the description (typically at the beginning)
>>as follows:
>>                 <literallayout class='monospaced'>
>>-     Fixes YOCTO #&lt;bug-id&gt;
>>+     [YOCTO #&lt;bug-id&gt;]
>>
>>      &lt;detailed description of change&gt;
>>                 </literallayout></para></listitem>
>>--
>>1.8.3.rc1.44.gb387c77
>>
>>_______________________________________________
>>yocto mailing list
>>yocto@yoctoproject.org
>>https://lists.yoctoproject.org/listinfo/yocto

