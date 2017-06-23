Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C08DAE00B9D; Thu, 22 Jun 2017 20:40:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9016BE00B57
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 20:40:44 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id w12so5685943pfk.0
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 20:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=vZBCJlBV+XOHXv4gT/L6xL1ZxtU6IdQJ68UIQu7h59o=;
	b=V+/Q4y8ViIMhjs37rd92IDWi5bqo6HLbOkcjdPgV1AnmLazpirm6wsDx+Se+8SfT0O
	/fl390ttECwkxzU+cUxQN3+KHNnXNdRE+7lupYBGJNs6XkqHykd1JMc8q6W9+AQzG48B
	tjPm6DEecsdRFjjYJtD8a70p4JYLgRT5iO7K5W5YpZtiqpw1ZiNgAtB9jRoqSIJlD1OL
	PytZKYG5B9lFMgt9RM5aF8RM+FnvEHe+C6fuCenU7wJAnzWtw9ej4fGMtMsvnBb70OMr
	l8ru0o7JrfXCKnJ2Tnl8UbBQHDNcfRQ0ZceD6Hhz+M5IovB6y0QvBsGWyigZsgmDt5CY
	KqdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=vZBCJlBV+XOHXv4gT/L6xL1ZxtU6IdQJ68UIQu7h59o=;
	b=pEviaY/4nQy8P0GIxKruVFBqDH2nwQNfRZEoKLigrkeyze9uwahsszpBtevyCgQTe+
	9OcC28xNkatmT15+v71baSiQ/Ta6ypua+jj5WrYUQPAX/ocllUUOtHZj2p0BFeHRa87F
	ptqZ64mEygTKBZNDVLMZISj1bIFFKOSXZsB4DGLduAQWfpz/zdKg46c5VCkXb3n/NkI8
	DPgAumXYfgMMtDTIPLPPpfXNtSKCmIoC7kMecQz7fEdNpCvI447DvfOSzCF5naS4mMfh
	6p43vFSJ/vL5TvkfHI1vOsfyTYZFJqC2D8uKZb1W9vDQ4tT73XlAXDiXkHYBA1+kmUPa
	4Prw==
X-Gm-Message-State: AKS2vOwDoFPf+sytGxqmC/GJy4jlO7Addf/nUGRb+lMXfNKHIOo9yZGQ
	r8y+jFvYj0+1K3WJ
X-Received: by 10.98.155.18 with SMTP id r18mr6078176pfd.198.1498189243538;
	Thu, 22 Jun 2017 20:40:43 -0700 (PDT)
Received: from [10.0.0.1] (CPE-1-122-193-77.wwl9.wel.bigpond.net.au.
	[1.122.193.77])
	by smtp.gmail.com with ESMTPSA id d2sm3416266pfb.49.2017.06.22.20.40.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 22 Jun 2017 20:40:43 -0700 (PDT)
To: Gunnar Andersson <gandersson@genivi.org>, Khem Raj <raj.khem@gmail.com>
References: <mailman.66247.1497786545.15860.yocto@yoctoproject.org>
	<1497809434.2788.77.camel@genivi.org>
	<7ee7dd60-a45d-350d-b213-0917fe6e32cb@igalia.com>
	<CAMKF1sr-5mxP2_WCXtvnfzMt4OgUAf_V2ZhLQFgQAqGMbPDovQ@mail.gmail.com>
	<dd9e6cf6-dcd3-9e90-2275-323b5c9fd0b6@gmail.com>
	<CAMKF1sp_5+1N_+okGXxZMREir62snRDk+BtbwDMz+t5SUYo5pg@mail.gmail.com>
	<61e45e0b-1fda-ecf5-51eb-437284c94d02@gmail.com>
	<CAMKF1soeiztrJEjDzLJ5k3t3QzyuK7qqJ-orW+1SPBR1b-oswg@mail.gmail.com>
	<8525501f-954a-8799-957c-f68efc4d7d5b@gmail.com>
	<1498030640.8095.27.camel@genivi.org>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <7ad17b0d-8b72-c2da-9f40-d0325e573bfd@gmail.com>
Date: Fri, 23 Jun 2017 11:40:39 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <1498030640.8095.27.camel@genivi.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: 47401300.usb-phy supply vcc not found, using dummy regulator
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
X-List-Received-Date: Fri, 23 Jun 2017 03:40:46 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi Everyone,

Is my beagleboard usb regulator broken ?

Here's the message I got :

====

usbcore: registered new interface driver usb-storage
47401300.usb-phy supply vcc not found, using dummy regulator
musb-hdrc musb-hdrc.0.auto: Failed to request rx1.
47401b00.usb-phy supply vcc not found, using dummy regulator


