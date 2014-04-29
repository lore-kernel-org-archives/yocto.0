Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AB17E00C6A; Tue, 29 Apr 2014 16:00:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=5.0 tests=RCVD_IN_DNSWL_HI,TRACKER_ID
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  1.1 TRACKER_ID BODY: Incorporates a tracking ID number
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Tue, 29 Apr 2014 15:59:57 PDT
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BA83E00B95
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 15:59:57 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 Apr 2014 15:58:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,953,1389772800"; d="scan'208";a="503332767"
Received: from unknown (HELO [10.255.12.182]) ([10.255.12.182])
	by orsmga001.jf.intel.com with ESMTP; 29 Apr 2014 15:58:50 -0700
Message-ID: <53602EAA.2020100@linux.intel.com>
Date: Tue, 29 Apr 2014 15:58:50 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>, 
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
References: <CAPhnLPAQAFOZCij0DMb+gQUMr9peNKeKDS9E6VikrfJ7WBoFtQ@mail.gmail.com>
In-Reply-To: <CAPhnLPAQAFOZCij0DMb+gQUMr9peNKeKDS9E6VikrfJ7WBoFtQ@mail.gmail.com>
Subject: Re: 1.5.2.rc3 now available for QA
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
X-List-Received-Date: Tue, 29 Apr 2014 23:00:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/28/2014 09:50 PM, Flanagan, Elizabeth wrote:
> http://autobuilder.yoctoproject.org/pub/releases/yocto-1.5.2.rc3
>
> bitbake     0a94e568152de550dedc8135a766beb18bf064ab
> eclipse-poky-juno     79cd3c6ff119526f3f85567253450d2e857afed0
> eclipse-poky-kepler     e842d41f05066df1533a2788e650f0be213ad5b5
> meta-fsl-arm     5fdb620c09df11e70434092f675c891e0ba84108
> meta-fsl-ppc     40465bac88ca28b554cff35346341d19552548bf
> meta-intel     acf2b4013d981563081bc072e778c4caaab7c67d
> meta-minnow     9aa60d0eaf03fe30670acf581eaf7e57c76b5f99
> meta-qt3     4772424ab69908d4e3b9d6d4717ca889468e6acd
> oecore     97bc1bce9a226cc02db8a5afc2c0d4f4f70034a6
> poky     9b7d43963f54d25e087a4cc55623a4cfeac121a9
>
>

Dora is now officially updated to

b626e109e83384558f45dc2e30e7caec677ce1db

The build that was done was based on my branch with one patch, this is 
updated with that patch and a BA SRCREV Bump.

I am not sure if we need another full build out on the AB or not, or 
just a Build appliance build?

Sau!


