Return-Path: <martyn.welch@ge.com>
Received: from exprod5og109.obsmtp.com (exprod5og109.obsmtp.com [64.18.0.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38382E01515
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 06:02:13 -0700 (PDT)
Received: from alpmlip12.e2k.ad.ge.com ([165.156.5.1]) (using TLSv1) by
	exprod5ob109.postini.com ([64.18.4.12]) with SMTP
	ID DSNKUaX8VH+m3sqtslnanFKfov+mvn48+aKe@postini.com;
	Wed, 29 May 2013 06:02:13 PDT
Received: from unknown (HELO alpmlip01.e2k.ad.ge.com) ([3.159.17.48])
	by alpmlip12.e2k.ad.ge.com with ESMTP/TLS/RC4-SHA;
	29 May 2013 09:02:11 -0400
Received: from es-j7s4d2j.amer.consind.ge.com (HELO [3.138.54.92])
	([3.138.54.92])
	by alpmlip01.e2k.ad.ge.com with ESMTP; 29 May 2013 09:02:10 -0400
Message-ID: <51A5FC51.7050106@ge.com>
Date: Wed, 29 May 2013 14:02:09 +0100
From: Martyn Welch <martyn.welch@ge.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130330 Thunderbird/17.0.5
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <10f0001e.10c21.13d45669ae7.Coremail.huanmateme@163.com>
	<516555F8.50006@gmail.com> <5554864.lTrseEoNhs@helios>
In-Reply-To: <5554864.lTrseEoNhs@helios>
Cc: Jean-baptiste DUONEA <jbduro2@gmail.com>, yocto@yoctoproject.org
Subject: Re: "trap: 80: SIGHUP: bad trap" comes up when building core-image-sato.
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
X-List-Received-Date: Wed, 29 May 2013 13:02:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 10/04/13 13:33, Paul Eggleton wrote:
> On Wednesday 10 April 2013 14:07:20 Jean-baptiste DUONEA wrote:
>> Problem comes from Dash shell, which is used by default on Ubuntu.
>> You have to reconfigure your terminal and disable the usage of Dash :
>> Type in your console : sudo dpkg-reconfigure dash
>> Choose the answer "No"
>> Close and launch your terminal, now it will works !
> 
> We do not need to do this anymore as of the denzil release (1.2) - we 
> explicitly support /bin/sh not being bash, and in fact I am running with 
> /bin/sh -> dash on Ubuntu here right now.
> 

Which release of Ubuntu are you using?

I've just hit this exact problem building busybox from Yocto 1.4 on Ubuntu 10.04.

Martyn


-- 
Martyn Welch (Lead Software Engineer)  | Registered in England and Wales
GE Intelligent Platforms               | (3828642) at 100 Barbirolli Square
T +44(0)1327322748                     | Manchester, M2 3AB
E martyn.welch@ge.com                  | VAT:GB 927559189

