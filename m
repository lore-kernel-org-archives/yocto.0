Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97C46E01300
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 01:29:18 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Oct 2012 01:28:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,599,1344236400"; d="scan'208";a="228604603"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 17 Oct 2012 01:29:18 -0700
Received: from mlindnex-mobl1.ger.corp.intel.com (unknown [10.237.105.34])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 360D56A4001
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 01:29:18 -0700 (PDT)
Message-ID: <507E6C5A.1080108@linux.intel.com>
Date: Wed, 17 Oct 2012 11:29:14 +0300
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
Organization: Intel OTC
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20121016 Thunderbird/15.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <DDDB9E6645DE24488B8485B41A051F471D9618D2@Mercury.usurf.usu.edu>
	<36ED13F3654AE54CA763E6821D93A5711047B519@szxeml534-mbx.china.huawei.com>
In-Reply-To: <36ED13F3654AE54CA763E6821D93A5711047B519@szxeml534-mbx.china.huawei.com>
Subject: Re: .bashrc not being used by root account
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
X-List-Received-Date: Wed, 17 Oct 2012 08:29:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/17/2012 09:25 AM, Venkata ramana gollamudi wrote:
> You can check the same with  "strace -f bash"
> You can see the files being loaded, as there is a rc file loading sequence exists for bash.
>
> Regards,
> Ramana
>
> ________________________________________
> From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on behalf of Jonathan Haws [Jonathan.Haws@sdl.usu.edu]
> Sent: Tuesday, October 16, 2012 9:32 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] .bashrc not being used by root account
>
> I have modified the .bashrc file for the system, however the root account does not seem to use it by default.  What am I missing?  I would rather not have to source the .bashrc file every time I login as root.

Try `echo $0` to see the shell you're in. By default you should be in 
`sh`, which does not source .bashrc.
You can execute `bash` after login, or change the login shell of 'root'.

Cheers,
--Mihai

>
> Thanks,
> Jonathan
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


-- 
Mihai Lindner

