Return-Path: <philip@balister.org>
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 61D1AE00747
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 07:20:19 -0700 (PDT)
Received: (qmail 9926 invoked by uid 1003); 22 Aug 2013 14:20:18 -0000
Received: from unknown (HELO ?192.168.1.103?)
	(philip@opensdr.com@71.171.32.225)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	22 Aug 2013 14:20:18 -0000
Message-ID: <52161E20.3010800@balister.org>
Date: Thu, 22 Aug 2013 10:20:16 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130625 Thunderbird/17.0.7
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <CAAGt+t0w9Rtia4vVJujgjTfmEU709WyhjCYSPP7PThMN+vpOdg@mail.gmail.com>
	<CAJTo0LYTB2eby76YsAtj+YM9jfAo1oia4TvRUXgiNU+DKiuOFQ@mail.gmail.com>
	<CAAGt+t2gxfmg8cJ+izKmejXcywknPpOvYMrRPUgKN5fHHa-gmw@mail.gmail.com>
	<CAAGt+t13OZ88fi_9foDDp+FeD9VOkBDip1RVQYxWkNejmvifeg@mail.gmail.com>
	<CAJTo0LYqaCwHTLnxUwPVME_zFNbWEVXHZoJpiWTTw-wBWn5xeQ@mail.gmail.com>
In-Reply-To: <CAJTo0LYqaCwHTLnxUwPVME_zFNbWEVXHZoJpiWTTw-wBWn5xeQ@mail.gmail.com>
X-Enigmail-Version: 1.5.2
Cc: Zafrullah Syed <zafrullahmehdi@gmail.com>, yocto <yocto@yoctoproject.org>
Subject: Re: bitbake with cmake recipe
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
X-List-Received-Date: Thu, 22 Aug 2013 14:20:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 08/22/2013 10:14 AM, Burton, Ross wrote:
> On 22 August 2013 14:40, Zafrullah Syed <zafrullahmehdi@gmail.com> wrote:
>> Hi Ross,
>>
>> Is this the correct way to write my recipe with cmake?
> 
> You should be able to remove your do_configure().

This recipe uses cmake:

http://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-connectivity/gnuradio/gnuradio_git.bb

Hoepfully, it is more complicated than you need, but you should be able
to see the cmake related parts.

Philip

> 
> Ross
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 
> 

