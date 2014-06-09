Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59B10E00B71; Mon,  9 Jun 2014 09:42:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE019E00B0B
	for <yocto@yoctoproject.org>; Mon,  9 Jun 2014 09:42:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s59GfthR016754
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 9 Jun 2014 09:41:55 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Mon, 9 Jun 2014 09:41:55 -0700
Message-ID: <5395E3C0.2010206@windriver.com>
Date: Mon, 9 Jun 2014 12:41:36 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Pierre Yves MORDRET <pierre-yves.mordret@st.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <888B7DC5D4899F46A9721989283666969C1E50A1DC@SAFEX1MAIL5.st.com>
In-Reply-To: <888B7DC5D4899F46A9721989283666969C1E50A1DC@SAFEX1MAIL5.st.com>
Subject: Re: Conditional Configuration Fragments
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
X-List-Received-Date: Mon, 09 Jun 2014 16:42:15 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 14-06-09 11:26 AM, Pierre Yves MORDRET wrote:
> Hello,
>
> I really don’t know whether this is feasible or not, but I’m trying to
> build a yocto image (custom image) with conditional configuration fragments.
>
> Today I have 2 image type: one for deployment purpose and another for
> debug purpose. Debug images is only a superset of deployment image with
> additional debug capabilities: nothing else.
>
> However now I would like to add additional linux kernel features to this
> debug image (ex: CONFIG_DEBUG_INFO=y).
>
> I want to add this feature into debug image, but NOT in deployment image.
>
> I was thinking to create a .bbappend to my linux .bb file, but again I
> don’t see how to use .bbappend in a conditional way (based on image name
> for instance)
>
> Do you have any idea to perform such request ?

Fragments are either just added to the SRC_URI or KERNEL_FEATURES via
the normal variable assignment rules.

So if you have something that you can test on (image/distro feature as
an example), you can use anonymous python and do a conditional
assignment.

Others on the list may have more elegant suggestions!

Bruce


>
> Many thanks in advance
>
> Description: Description: Description: Description: Description:
> Description: Description: Description: Description: Description:
> Description: Description: logo_big5
>
> Pierre-Yves MORDRET |TINA: 166 7286 |Tel: +33 244027286 | Mobile: +33
> 611091514
>
> UPD | Middleware Integrator
>
>
>


