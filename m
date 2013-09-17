Return-Path: <jose.ferreiro@horus.es>
Received: from correo.horus.es (correo.horus.es [2.139.157.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16EBCE013AB
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 02:55:50 -0700 (PDT)
Received: from [172.30.250.61] (172.30.250.61) by horus27 (Axigen)
	with (CAMELLIA256-SHA encrypted) ESMTPSA id 0EC765;
	Tue, 17 Sep 2013 11:55:48 +0200
Message-ID: <52382724.5030900@horus.es>
Date: Tue, 17 Sep 2013 11:55:48 +0200
From: =?ISO-8859-1?Q?Jose_M=AA_Ferreiro?= <jose.ferreiro@horus.es>
User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:16.0)
	Gecko/20121005 Thunderbird/16.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <52372E51.7020006@horus.es>
In-Reply-To: <52372E51.7020006@horus.es>
X-AxigenVirus-Level: 1
X-AxigenSpam-Level: 2
Subject: Re: Media players: recipes and packages
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
X-List-Received-Date: Tue, 17 Sep 2013 09:55:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

Hello

Task #9 - How to add bad/ugly:
https://community.freescale.com/docs/DOC-95254

Thanks Daiane,
jose


PD: search keywords: yocto gstreamer bad ugly


El 16/09/2013 18:14, Jose Mª Ferreiro escribió:
> Hello
>
> Here is: iMX6 Sabre Lite + Yocto dylan
>
> We want to reproduce some music and video files to test the board 
> behaviour.
>
> With fsl-image-gui:
>   - Video player: a mp4 file is well reproduced. Image is good. Sound 
> is low but I can hear it with headphones connected to board.
>   - Music player: when we select a mp3 file, the window closes
>
> With core-image-sato-sdk:
>   - Video player: when we select a mp4 file, an error comes: a plug-in 
> is needed
>   - Music player: when we select a mp3 file, the player shows it, but 
> the play does not start
>
> How can I find what package/recipe in fsl-image-gui does mp4 work?
> Is there any way to know what kind of files can play each image by 
> default?
>
> Thanks,
> Jose
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


