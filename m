Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8618AE00597
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 15:26:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r38MQpji028708
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 8 Apr 2013 15:26:51 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.55) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Mon, 8 Apr 2013 15:26:51 -0700
Message-ID: <5163442A.7070801@windriver.com>
Date: Mon, 8 Apr 2013 18:26:50 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1304081757170.3910@oneiric>
In-Reply-To: <alpine.DEB.2.02.1304081757170.3910@oneiric>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: what's the situation with MIPS support/BSPs/dev kits in yocto?
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
X-List-Received-Date: Mon, 08 Apr 2013 22:26:54 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-04-08 5:59 PM, Robert P. J. Day wrote:
>
>    other than the canonical routerstation pro in the meta-yocto-bsp
> layer, is there any serious work being put into MIPS machines?  a
> quick google didn't seem to find anything, and the rs pro itself was
> end-of-lifed a while back (as i recall), so is there something else if
> one wants to use yocto on a MIPS dev kit?

From: https://bugzilla.yoctoproject.org/show_bug.cgi?id=2444

MIPS suggested refresh: http://www.ubnt.com/edgemax

.. but I've yet to complete the due diligence on seeing if I can
actually purchase one :) That's going to happen shortly after yocto
1.4 completes.

Bruce

>
> rday
>


