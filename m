Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 90804E0148A
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2013 11:19:56 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r21JJraY014943
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 1 Mar 2013 11:19:53 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.328.9;
	Fri, 1 Mar 2013 11:19:53 -0800
Message-ID: <5130FF50.6070401@windriver.com>
Date: Fri, 1 Mar 2013 14:19:44 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Rudolf Streif <rstreif@linuxfoundation.org>
References: <CAHUNapRBgEjmtJNCsY+t59uJ8p1+HzJuQKaJxNExbPx_fJKZZQ@mail.gmail.com>
	<5130E57C.5090802@windriver.com>
	<CA+gsK-qsTjhRnH26Oc5YD++jcgGda4f4kV+CJ3aAJCdkqV=Kng@mail.gmail.com>
In-Reply-To: <CA+gsK-qsTjhRnH26Oc5YD++jcgGda4f4kV+CJ3aAJCdkqV=Kng@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: linux 3.8
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
X-List-Received-Date: Fri, 01 Mar 2013 19:19:56 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-01 02:15 PM, Rudolf Streif wrote:
> Bruce,
>
> On Fri, Mar 1, 2013 at 9:29 AM, Bruce Ashfield
> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>> wrote:
>
>     But note, Greg is talking specifically about LTSI, we don't
>     expect more than one LTSI per year, and we are already locked into
>     the LTSI 3.4.
>
> However, as far as I understand it the 3.4 snapshot in
> git.yoctoproject.org <http://git.yoctoproject.org> is from kernel.org
> <http://kernel.org> and not from
> http://git.linuxfoundation.org/ltsi-kernel.git. GregKH has been merging
> patches into the LTSI kernel, such as AF_BUS, that have not been
> accepted by upstream. I do not think that those patches are being merged
> into the YP kernel tree. But please correct me if I am wrong.

The 3.4 LTSI patches are all present on the 3.4 kernel tree, directly
from Greg's patch queue.

http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.4/log/?h=ltsi

And that branch is merged into each and every other branch in the
linux-yocto tree.

We've been involved with Greg and LTSI for quite a while now, and are
tracking it via our tree as we discussed with the interested parties.

Cheers,

Bruce

>
> Cheers,
> Rudi


