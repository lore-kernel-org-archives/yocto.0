Return-Path: <Fahad_Usman@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD29AE00B9C; Wed, 10 Feb 2016 23:31:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF459E00B89
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 23:31:22 -0800 (PST)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1aTlij-0000QQ-6J from Fahad_Usman@mentor.com ;
	Wed, 10 Feb 2016 23:31:21 -0800
Received: from [137.202.156.162] (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server (TLS) id 14.3.224.2; Thu, 11 Feb 2016 07:31:20 +0000
To: Jon Szymaniak <jon.szymaniak@gmail.com>
References: <56BB7201.4080904@mentor.com>
	<CANge7vX2N-mZXJsmJHTNfx7eRFohNgAanc7k=m37vF8eOaMyCw@mail.gmail.com>
From: "Usman, Fahad" <Fahad_Usman@mentor.com>
Message-ID: <56BC38C3.5040806@mentor.com>
Date: Thu, 11 Feb 2016 12:31:15 +0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <CANge7vX2N-mZXJsmJHTNfx7eRFohNgAanc7k=m37vF8eOaMyCw@mail.gmail.com>
X-Originating-IP: [137.202.0.76]
Cc: yocto@yoctoproject.org
Subject: Re: wic: Setting partition id value?
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
X-List-Received-Date: Thu, 11 Feb 2016 07:31:25 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 02/11/2016 07:03 AM, Jon Szymaniak wrote:
> I ran into this problem as well, but with parted. My hack was to use 
> dd to write the correct type ID into the image's MBR after I finished 
> creating the partitions on the image file.
Thanks Jon Szymaniak,
I was also thinking about a similar solution, the reason wic has this 
limitation is probably because it uses parted under the hood and parted 
doesn't allow you to set the partition id to an arbitrary value. A safer 
way to do this might be with the help of fdisk as it allows you to 
change partition's system id using the 't' sub command in interactive 
mode. But I am looking for a way to do this using existing options in wic.

Regards,
Fahad Usman.

