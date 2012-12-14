Return-Path: <sherbrec@cit-ec.uni-bielefeld.de>
Received: from smarthost.TechFak.Uni-Bielefeld.DE
	(smarthost.TechFak.Uni-Bielefeld.DE [129.70.137.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 558C5E006D5
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 02:57:55 -0800 (PST)
Received: from [129.70.144.11] (hooge.TechFak.Uni-Bielefeld.DE [129.70.144.11])
	(using TLSv1 with cipher DHE-RSA-CAMELLIA256-SHA (256/256 bits))
	(No client certificate requested) (Authenticated sender: sherbrec)
	by smarthost.TechFak.Uni-Bielefeld.DE (Postfix) with ESMTPSA id
	D06FA80035; Fri, 14 Dec 2012 11:57:51 +0100 (CET)
Message-ID: <50CB062D.3010601@cit-ec.uni-bielefeld.de>
Date: Fri, 14 Dec 2012 11:57:49 +0100
From: Stefan Herbrechtsmeier <sherbrec@cit-ec.uni-bielefeld.de>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Lukas Bulwahn <Lukas.Bulwahn@bmw-carit.de>
References: <000501cdd231$1c134db0$5439e910$@oss.bmw-carit.de>
	<F672537F6568FE49AF3065326904F744206D10@Exchange2010.bmw-carit.intra>
In-Reply-To: <F672537F6568FE49AF3065326904F744206D10@Exchange2010.bmw-carit.intra>
X-Mailman-Approved-At: Fri, 14 Dec 2012 08:06:36 -0800
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Packaging ROS for Yocto-Linux
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
X-List-Received-Date: Fri, 14 Dec 2012 10:57:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

Hi Lukas,

I have interest in a ROS layer for Yocto. We are already using Yocto for 
your mini robot platforms but with the older player framework and our 
own framework. Last time I checked ROS they only support cross compiling 
via a native ROS installation and hide a lot of the compiling and 
installation process behind their own tools / scripts.

Kind regards,
   Stefan

Am 13.12.2012 09:32, schrieb Lukas Bulwahn:
> Hi all,
>
> To my previous question, I have not received any feedback here. If anyone knows someone who might be interested in packaging ROS, please contact us. We're looking for collaborators and users.
>
> Lukas
>
> -----Urspr¸ngliche Nachricht-----
> Von: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] Im Auftrag von Lukas Bulwahn
> Gesendet: Dienstag, 4. Dezember 2012 16:08
> An: yocto@yoctoproject.org
> Betreff: [yocto] Packaging ROS for Yocto-Linux
>
> Hi all,
>
> we are interested in setting up a computing platform for our development using Yocto-Linux and the robotic operating system ROS (http://www.ros.org/). We are currently at the very beginning of this
> development: As a first step, we want to package ROS for our own needs, but we are open to contribute this to the community if there are others that need this as well.
>
> Has someone in the community already packaged ROS for Yocto? Are there others that also interested in a ROS package for Yocto?
>
> We are happy about any feedback.
>
>
> Lukas Bulwahn
> BMW Car IT GmbH
> Petuelring 116
> D-80809 Muenchen
> Germany
> Mail: lukas.bulwahn@oss.bmw-carit.de
> Web: http://www.bmw-carit.de
> -------------------------------------------------------------
> BMW Car IT GmbH
> Gesch‰ftsf¸hrer: Harald Heinecke
> Sitz und Registergericht: M¸nchen HRB134810
> -------------------------------------------------------------
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 
Dipl.-Ing. Stefan Herbrechtsmeier

Universit‰t Bielefeld
AG Kognitronik & Sensorik
Exzellenzcluster Cognitive Interaction Technology (CITEC)
Universit‰tsstraﬂe 21-23
D-33615 Bielefeld (Germany)

office : M6-117
phone  : +49 521-106-67370
fax    : +49 521-106-12348
mailto : sherbrec@cit-ec.uni-bielefeld.de
www    : http://www.ks.cit-ec.uni-bielefeld.de/


