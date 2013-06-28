Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECF22E01482
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 01:51:57 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r5S8waZr020272; Fri, 28 Jun 2013 09:58:36 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Y6aHkTeDBoXq; Fri, 28 Jun 2013 09:58:35 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r5S8wU3X020264
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Fri, 28 Jun 2013 09:58:32 +0100
Message-ID: <1372409484.9930.245.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Ashfield, Bruce" <Bruce.Ashfield@windriver.com>, "Hart, Darren"
	<darren.hart@intel.com>
Date: Fri, 28 Jun 2013 09:51:24 +0100
X-Mailer: Evolution 3.6.4-0ubuntu1 
Mime-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>
Subject: poky-extras
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
X-List-Received-Date: Fri, 28 Jun 2013 08:52:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Bruce/Darren,

My attention was drawn to the existence of poky-extras. This was really
a short term gap filling repository and I think the time has come to
remove it. There are basically two chunks of code in there.

The meta-linaro pieces in there haven't been touched in two years and
are therefore dead. I think we should delete them to alleviate any
confusion.

The kernel pieces have been touched more recently. Some moved into the
core, mostly its just example boiler plate type code now. I think this
needs moving to a better named repository if its still wanted/useful, or
we delete it. I personally don't have a strong preference.

Can someone take care of sorting this out?

I did notice there is an empty checksums.ini file in there!

Cheers,

Richard


