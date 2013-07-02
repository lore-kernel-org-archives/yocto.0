Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD818E013B0
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2013 16:49:41 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 02 Jul 2013 16:49:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,983,1363158000"; d="scan'208";a="359625488"
Received: from unknown (HELO [10.255.13.91]) ([10.255.13.91])
	by fmsmga001.fm.intel.com with ESMTP; 02 Jul 2013 16:50:33 -0700
Message-ID: <51D36713.2000005@linux.intel.com>
Date: Tue, 02 Jul 2013 16:49:39 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: Trevor Woerner <trevor.woerner@linaro.org>
References: <1372214269-16897-1-git-send-email-trevor.woerner@linaro.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF51ADC@ORSMSX101.amr.corp.intel.com>
	<CALmOhg=evL-vyWc5q3Fd=y2GnUz3gfWSUyJDVFG5J=1k2w2L7g@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF527FE@ORSMSX101.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF5286C@ORSMSX101.amr.corp.intel.com>
	<CALmOhg=bV1t1OxiVTYOC3fxq4T2XD=D1-ZQBSKHMOjZPYueaCg@mail.gmail.com>
In-Reply-To: <CALmOhg=bV1t1OxiVTYOC3fxq4T2XD=D1-ZQBSKHMOjZPYueaCg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"patches@linaro.org" <patches@linaro.org>
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
X-List-Received-Date: Tue, 02 Jul 2013 23:49:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/01/2013 08:35 AM, Trevor Woerner wrote:
> On 1 July 2013 02:37, Rifenbark, Scott M <scott.m.rifenbark@intel.com> wrote:
>> I got a hold of Saul and confirmed that you are right.  I have been entering these strings incorrectly for a good while now.  I have applied your patch to the tip of the yocto-docs repository and republished in our development area for the manuals.
>
Just to complete this, and I apologize for missing the thread,

Yes, the correct format is [YOCTO #XXXX] where XXXX is the Yocto Project 
Bugzilla Bug #.

Sau!

>
> Great! Thank _you_ :-)
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

