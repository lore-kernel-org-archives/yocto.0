Return-Path: <jose.ferreiro@horus.es>
Received: from correo.horus.es (correo.horus.es [2.139.157.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D411E006B5
	for <yocto@yoctoproject.org>; Mon,  9 Sep 2013 11:16:55 -0700 (PDT)
Received: from [172.30.250.61] (172.30.250.61) by horus27 (Axigen)
	with (CAMELLIA256-SHA encrypted) ESMTPSA id 0CB0DB;
	Mon, 9 Sep 2013 20:16:51 +0200
Message-ID: <522E1091.1000306@horus.es>
Date: Mon, 09 Sep 2013 20:16:50 +0200
From: =?ISO-8859-1?Q?Jose_M=AA_Ferreiro?= <jose.ferreiro@horus.es>
User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:16.0)
	Gecko/20121005 Thunderbird/16.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <522DF7A2.5050109@horus.es>
In-Reply-To: <522DF7A2.5050109@horus.es>
X-AxigenVirus-Level: 1
X-AxigenSpam-Level: 2
Subject: Re: Yocto + QT: python lost modules
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
X-List-Received-Date: Mon, 09 Sep 2013 18:16:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

Hello

Just found the gname search.

Trying:

TOOLCHAIN_HOST_TASK_append = " nativesdk-python-subprocess"

bitbaking ...

Thanks

El 09/09/2013 18:30, Jose Mª Ferreiro escribió:
> Hello
>
> We have compiled meta-toolchain-qt on a Yocto dylan configured for 
> iMX6 sabre lite board. We can compile and run QT applications locally 
> and on the remote target. The problem comes with the debugger. We can 
> start it and put breakpoints, but variables are not showed in the QT 
> environment.
>
> QT is launching python commands to represent the variables but some 
> commands fails because the python compiled for meta-toolchain-qt is 
> not complete (module subprocces is no included, for example).
>
> We have compiled another image from this same dylan, fsl-image-gui, 
> that has a complete python in it. We tried to see what the difference 
> is between the two images, but I can not find the reference to python 
> on fsl-image-gui.
>
> I found only one reference to this problem at OpenEmbeded. It got 
> solved there adding several lines to python-setuptools_0.6c11.bb recipe:
>
> RDEPENDS_${PN} = "\
>   python-distutils \
>   python-subprocess \
>   python-compression \
> "
>
> RDEPENDS_${PN}_class-native = "\
>   python-distutils \
>   python-compression \
> "
>
> but i did the change and nothing changed. Any idea why has it not 
> worked? Any other better way to do it?
>
> Thanks and best regards,
>
> jose
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


