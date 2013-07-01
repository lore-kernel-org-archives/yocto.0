Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ACBEE013B8
	for <yocto@yoctoproject.org>; Sun, 30 Jun 2013 21:25:15 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 30 Jun 2013 21:25:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,971,1363158000"; d="scan'208";a="324779231"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by azsmga001.ch.intel.com with ESMTP; 30 Jun 2013 21:20:14 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.181]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.217]) with mapi id
	14.03.0123.003; Sun, 30 Jun 2013 21:20:13 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Trevor Woerner <trevor.woerner@linaro.org>
Thread-Topic: [yocto] [yocto-docs][PATCH] dev-manual: referencing bugzilla
	issues
Thread-Index: AQHOchZTwBOE/Rt210q+ZktYKL8qrZlHZdeQgAWzAwCAAiZYwA==
Date: Mon, 1 Jul 2013 04:20:12 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF527FE@ORSMSX101.amr.corp.intel.com>
References: <1372214269-16897-1-git-send-email-trevor.woerner@linaro.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF51ADC@ORSMSX101.amr.corp.intel.com>
	<CALmOhg=evL-vyWc5q3Fd=y2GnUz3gfWSUyJDVFG5J=1k2w2L7g@mail.gmail.com>
In-Reply-To: <CALmOhg=evL-vyWc5q3Fd=y2GnUz3gfWSUyJDVFG5J=1k2w2L7g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
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
X-List-Received-Date: Mon, 01 Jul 2013 04:25:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Trevor,=20

Ok - Now I am confused.  I just looked through a bunch of commits to poky a=
nd the brackets are indeed used.  I got this advice from Saul if I remember=
 correctly a long time ago because I have been doing it this way for a long=
 time.  I will contact him and ask.  Likely that it changed at some point a=
nd I didn't know about it.

Scott

>-----Original Message-----
>From: Trevor Woerner [mailto:trevor.woerner@linaro.org]
>Sent: Saturday, June 29, 2013 5:26 AM
>To: Rifenbark, Scott M
>Cc: yocto@yoctoproject.org; patches@linaro.org; Wold, Saul
>Subject: Re: [yocto] [yocto-docs][PATCH] dev-manual: referencing
>bugzilla issues
>
>What's odd is that here:
>
>http://lists.linuxtogo.org/pipermail/openembedded-core/2013-
>April/037826.html
>
>Saul explicitly tells Radu that using the brackets is the correct
>format (which is what, I think, caused me to send this patch in the
>first place).
>
>I hope Saul notices this thread and comments :-)
>
>On 26 June 2013 00:26, Rifenbark, Scott M <scott.m.rifenbark@intel.com>
>wrote:
>> Trevor,
>>
>> I use to have [YOCTO #<bug-id>] in the manual just as you do here.  I
>was told by Saul though that I was not to use the brackets in the commit
>description.  That is when I took them out of the manual.  Maybe Saul
>can add more to this explanation.
>>
>> Thanks,
>> Scott
>>
>>>-----Original Message-----
>>>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>>bounces@yoctoproject.org] On Behalf Of Trevor Woerner
>>>Sent: Tuesday, June 25, 2013 7:38 PM
>>>To: yocto@yoctoproject.org
>>>Cc: patches@linaro.org
>>>Subject: [yocto] [yocto-docs][PATCH] dev-manual: referencing bugzilla
>>>issues
>>>
>>>Based on observations from the various mailing lists, it is obvious
>that
>>>bugzilla issues are almost always referenced using square brackets.
>>>
>>>Signed-off-by: Trevor Woerner <trevor.woerner@linaro.org>
>>>---
>>> documentation/dev-manual/dev-manual-newbie.xml | 2 +-
>>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>>diff --git a/documentation/dev-manual/dev-manual-newbie.xml
>>>b/documentation/dev-manual/dev-manual-newbie.xml
>>>index 0c849f5..55e0c58 100644
>>>--- a/documentation/dev-manual/dev-manual-newbie.xml
>>>+++ b/documentation/dev-manual/dev-manual-newbie.xml
>>>@@ -1405,7 +1405,7 @@
>>>                 references - any commit that addresses a specific bug
>>>should include the
>>>                 bug ID in the description (typically at the
>beginning)
>>>as follows:
>>>                 <literallayout class=3D'monospaced'>
>>>-     Fixes YOCTO #&lt;bug-id&gt;
>>>+     [YOCTO #&lt;bug-id&gt;]
>>>
>>>      &lt;detailed description of change&gt;
>>>                 </literallayout></para></listitem>
>>>--
>>>1.8.3.rc1.44.gb387c77
>>>
>>>_______________________________________________
>>>yocto mailing list
>>>yocto@yoctoproject.org
>>>https://lists.yoctoproject.org/listinfo/yocto

