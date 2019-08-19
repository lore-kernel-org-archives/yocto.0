Return-Path: <sdi1100002@di.uoa.gr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A50CBE00935; Mon, 19 Aug 2019 04:08:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [195.134.100.72 listed in list.dnswl.org]
X-Greylist: delayed 1209 seconds by postgrey-1.32 at yocto-www;
	Mon, 19 Aug 2019 04:08:58 PDT
Received: from msa.uoa.gr (msa.uoa.gr [195.134.100.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B2ADE007AA
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 04:08:57 -0700 (PDT)
Received: by MSA with id AE92C8723EBA2CC09DBBB4AE3BCA0630BABD0AC3
Received: from [88.197.47.46] ([88.197.47.46]) (authenticated bits=0)
	by msa.uoa.gr (8.14.1/8.14.1) with ESMTP id x7JAmlPa004645
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NOT)
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 13:48:47 +0300 (EEST)
From: Ekaterini Voulgari <sdi1100002@di.uoa.gr>
To: yocto@yoctoproject.org
Message-ID: <62464e60-54da-b8fb-a0c5-864eee5b7e4a@di.uoa.gr>
Date: Mon, 19 Aug 2019 13:48:47 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
Sender: sdi1100002@di.uoa.gr
X-UoAMSAId: AE92C8723EBA2CC09DBBB4AE3BCA0630BABD0AC3
Subject: Opencv headers
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
X-List-Received-Date: Mon, 19 Aug 2019 11:08:59 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: el-GR

Hello all,
I'm trying to add a program to my image that uses opencv (#include 
<opencv2/opencv.hpp>), but I get compile error "fatal error: 
opencv2/opencv.hpp: No such file or directory"

The file opencv.hpp exists in workdir 
/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-musleabi/opencv/3.4.5-r0/image/usr/include/opencv2/opencv.hpp. 
Can anyone help on where are the headers located in crossbuilds? Any 
help appreciated.
The recipe:

SRC_URI = "file://capture.cpp"

do_compile () {
     ${CC} capture.cpp  -lopencv_core -lopencv_imgproc -lopencv_highgui 
-lopencv_videoio
}

do_install () {

         install -d -m 0755 ${D}/${bindir}
         install -m 0755 prog_kameras ${D}/${bindir}/prog_kameras
}


