Return-Path: <Lauri.Hintsala@bluegiga.com>
Received: from darkblue.bluegiga.com (bluegiga.fi [194.100.31.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADA5BE0030B
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2012 23:38:46 -0800 (PST)
Received: from [10.1.1.28] ([10.1.1.28]) by darkblue.bluegiga.com with
	Microsoft SMTPSVC(6.0.3790.4675); Fri, 9 Mar 2012 09:38:44 +0200
Message-ID: <4F59B37A.4080301@bluegiga.com>
Date: Fri, 09 Mar 2012 09:38:34 +0200
From: Lauri Hintsala <lauri.hintsala@bluegiga.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.27) Gecko/20120216 Lightning/1.0b2 Thunderbird/3.1.19
MIME-Version: 1.0
To: jfabernathy <jfabernathy@gmail.com>
References: <4F58D16C.8030309@gmail.com>
In-Reply-To: <4F58D16C.8030309@gmail.com>
X-OriginalArrivalTime: 09 Mar 2012 07:38:44.0096 (UTC)
	FILETIME=[A7B64000:01CCFDC7]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding test files to an image
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
X-List-Received-Date: Fri, 09 Mar 2012 07:38:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/08/2012 05:34 PM, jfabernathy wrote:
> Suppose I want to build the meta-intel/meta-sugarbay image and also
> include some video and audio files into the /home/root directory to
> facilitate testing of the video and audio players.

I have used ROOTFS_POSTPROCESS_COMMAND variable to add some extra files 
to rootfs image for testing purposes. Following example is copying files 
from build/extra path to root filesystem image if the extra folder exists.

# copy files from extra folder to image
ROOTFS_POSTPROCESS_COMMAND += "[ -d ${TOPDIR}/extra ] && cp -r 
${TOPDIR}/extra/* {IMAGE_ROOTFS};"

Regards,
Lauri

