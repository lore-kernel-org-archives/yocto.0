Return-Path: <Hongzhi.Song@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61CFDE00E7D; Thu,  1 Mar 2018 02:35:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00, HTML_FONT_FACE_BAD, 
	HTML_MESSAGE,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 HTML_FONT_FACE_BAD BODY: HTML font face is not a word
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43417E00DC6
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2018 02:35:20 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w21AZJvL018842
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 1 Mar 2018 02:35:19 -0800 (PST)
Received: from [128.224.162.148] (128.224.162.148) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Thu, 1 Mar 2018 02:34:51 -0800
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
From: "Hongzhi, Song" <hongzhi.song@windriver.com>
Message-ID: <415639a4-b01a-514e-5eb8-2242cbec1bf9@windriver.com>
Date: Thu, 1 Mar 2018 18:35:16 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
X-Originating-IP: [128.224.162.148]
Cc: yocto@yoctoproject.org
Subject: =?UTF-8?B?UXVlc3Rpb25zIGFib3V0IHVkZXYgcnVsZSBhbmQgc3lzdGVtZC11ZGV277yMcmVsZXZhbnQgdG8gbW91bnRpbmcgYmxvY2sgZGV2aWNl?=
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
X-List-Received-Date: Thu, 01 Mar 2018 10:35:22 -0000
Content-Type: multipart/alternative;
	boundary="------------406D1D767D67E1F927BD7440"
Content-Language: en-US

--------------406D1D767D67E1F927BD7440
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

Defect:

     The exiting method of automount of udev in /oe-core/meta/ /is using

/automount.rules/ which call /mount.sh/ that using //bin/mount/ to mount 
device.

But systemd-udevd detaches /mount()/ operations done within the service

from the rest of the system with MountFlag=slave， this means host can

not access device. (e.g. Executing /mkfs.ext4 /dev/sda1// prompts

//dev/sda1 is apparently in use by the system; will not make a 
filesystem here!/)


Solution:

     Systemd upstream suggest that the best way is to use "systemd-mount"

in udev rules, which will request the mount operation to be executed by 
PID 1.

And I have tested it was effective.


Uncertain：

     The exiting method is designed for /SysV-init /which is not 
compatible to

systemd-udev, at least that's what I think. So I think that we should design

a new rule or organizational structure to be suitable for systemd-udev and

to mount deferent device. Dose anyone help do this? Or I can make some

improvements on the basis of the existing with "systemd-mount".


--------------406D1D767D67E1F927BD7440
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Defect:</p>
    <p>    The exiting method of automount of udev in <font face="Times
        New Roman, Times, serif"><i>oe-core/meta/ </i></font>is using <br>
    </p>
    <p><font face="Times New Roman, Times, serif"><i>automount.rules</i></font>
      which call <font face="Times New Roman, Times, serif"><i>mount.sh</i></font>
      that using <i><font face="Times New Roman, Times, serif">/bin/mount</font></i>
      to mount device. <br>
    </p>
    <p>But systemd-udevd detaches <font face="Times New Roman, Times,
        serif"><i>mount()</i></font> operations done within the service
      <br>
    </p>
    <p>from the rest of the system with MountFlag=slave， this means host
      can <br>
    </p>
    <p>not access device. (e.g. Executing <font face="Times New Roman,
        Times, serif"><i>mkfs.ext4 /dev/sda1/</i></font> prompts <br>
    </p>
    <p><i><font face="Times New Roman, Times, serif">/dev/sda1 is
          apparently in use by the system; will not make a filesystem
          here!</font></i>)<br>
    </p>
    <p><br>
    </p>
    <p>Solution:</p>
    <p>    Systemd upstream suggest that the best way is to use
      "systemd-mount" <br>
    </p>
    <p>in udev rules, which will request the mount operation to be
      executed by PID 1.<br>
    </p>
    <p>And I have tested it was effective.</p>
    <p><br>
    </p>
    <p>Uncertain：</p>
    <p>    The exiting method is designed for <font face="Times New
        Roman, Times, serif"><i>SysV-init </i></font>which is not
      compatible to <br>
    </p>
    <p>systemd-udev, at least that's what I think. So I think that we
      should design</p>
    <p>a new rule or organizational structure to be suitable for
      systemd-udev and <br>
    </p>
    <p>to mount deferent device. Dose anyone help do this? Or I can make
      some <br>
    </p>
    <p>improvements on the basis of the existing with "systemd-mount".<br>
    </p>
  </body>
</html>

--------------406D1D767D67E1F927BD7440--
