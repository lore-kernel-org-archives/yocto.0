Return-Path: <jose.ferreiro@horus.es>
Received: from correo.horus.es (correo.horus.es [2.139.157.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B452E0073F
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2013 09:48:11 -0700 (PDT)
Received: from [172.30.250.61] (172.30.250.61) by horus27 (Axigen)
	with (CAMELLIA256-SHA encrypted) ESMTPSA id 2D7CFF;
	Wed, 9 Oct 2013 18:48:08 +0200
Message-ID: <525588C9.4080408@horus.es>
Date: Wed, 09 Oct 2013 18:48:09 +0200
From: =?ISO-8859-1?Q?Jose_M=AA_Ferreiro?= <jose.ferreiro@horus.es>
User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:16.0)
	Gecko/20121005 Thunderbird/16.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-AxigenVirus-Level: 1
X-AxigenSpam-Level: 4
Subject: Qt + phonon + iMX codecs
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
X-List-Received-Date: Wed, 09 Oct 2013 16:48:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello

Here: iMX6Q Sabre Lite board + yocto - dylan+ linux-imx

One of our Qt tests is an application with four videos played by phonon. 
When we tried to make it work, we saw only one video working.

Looking for a solution we found the file 
0001-Add-support-for-i.MX-codecs-to-phonon.patch at
  dylan/sources/meta-fsl-arm/recipes-qt/qt4/qt4 directory. It used only 
mfw_v4lsink.

We changed  "mfw_v4lsink" references to "mfw_isink" (agressive, I know, 
but I was desperate)  ... and it worked. We had four videos on window.

Now, we are testing dora. Theres is another patch but the previous doing 
does not get the same result. I would say there are allocation memory 
problems and not all the videos are working. Sometimes one play, 
sometimes three, never four.

Can you give me any advice about how to add isink codec to phonon 
backend? or is it  being done now?

Thank you and best regards,
Jose





