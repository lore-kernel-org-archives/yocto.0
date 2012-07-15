Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A73CAE0034D
	for <yocto@yoctoproject.org>; Sat, 14 Jul 2012 21:48:31 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Jul 2012 21:48:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="166261011"
Received: from unknown (HELO [10.255.12.178]) ([10.255.12.178])
	by orsmga001.jf.intel.com with ESMTP; 14 Jul 2012 21:48:21 -0700
Message-ID: <50024B95.7010005@linux.intel.com>
Date: Sat, 14 Jul 2012 21:48:21 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: [Package Report System]Manual check recipes name list
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
X-List-Received-Date: Sun, 15 Jul 2012 04:48:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

This mail was sent out by Package Report System.
It will list all the recipes which can't check upstream version by 
script, and will show how long it is since their last mannual version check.
You can check the detail information at 
http://packages.yoctoproject.org/manuallychkinfo


PackageName              Version             LastChkVersion 
LastChkTime              Maintainer 
NoUpgradeReason               lsb                      1.4 
    1.4                 88 days                  Yi Zhao 
<yi.zhao@windriver.co...        1.4 is fixed version of LSB Te...
mingetty                 1.08                1.08                185 day 
                  Xiaofeng.Yan <xiaofeng@windri...        No data 
                 libfm                    0.1.17              0.1.17 
           9 days,                  Valentin Popa <valentin.popa@... 
     No data                       puzzles                  r9561 
         r9561               9 days,                  Valentin Popa 
<valentin.popa@...        No data                       pcmanfm 
          0.9.10              0.9.10              9 days, 
    Valentin Popa <valentin.popa@...        No data 
   menu-cache               0.3.3               0.3.3 
41103 d                  Valentin Popa <valentin.popa@...        No data 
                       freetype                 2.4.9 
2.4.10              9 days,                  Valentin Popa 
<valentin.popa@...        No data                       libpng 
          1.2.49              1.5.11              10 days 
    Scott Garman <scott.a.garman@...        1.4.3 and later changes the 
AP...
opensp                   1.5.2               1.5.2               10 days 
                  Scott Garman <scott.a.garman@...        No data 
                 e2fsprogs                1.42.1              1.42.4 
           10 days                  Scott Garman <scott.a.garman@... 
     No data                       chrpath                  0.14 
         0.14                10 days                  Scott Garman 
<scott.a.garman@...        No data                       expat 
           2.1.0               2.0.1               10 days 
     Scott Garman <scott.a.garman@...        No data 
    nfs-utils                1.2.3               1.2.6               10 
days                  Scott Garman <scott.a.garman@...        No data 
                     sqlite3                  3.7.13              3.7.13 
              10 days                  Saul Wold <sgw@linux.intel.co... 
        No data                       libcap                   2.22 
            2.22                10 days                  Saul Wold 
<sgw@linux.intel.co...        No data                       libexif 
              0.6.20              0.6.20              10 days 
        Saul Wold <sgw@linux.intel.co...        No data 
       libcheck                 0.9.8               0.9.8 
10 days                  Saul Wold <sgw@linux.intel.co...        No data 
                       boost                    1.49.0 
1.50.0              10 days                  Saul Wold 
<sgw@linux.intel.co...        No data                       libmad 
              0.15.1b             0.15.1b             10 days 
        Saul Wold <sgw@linux.intel.co...        No data 
       glew                     1.7.0               1.7.0 
10 days                  Saul Wold <sgw@linux.intel.co...        No data 
                       sysstat                  10.0.5 
10.0.5              10 days                  Saul Wold 
<sgw@linux.intel.co...        No data                       psmisc 
              22.19               22.19               10 days 
        Saul Wold <sgw@linux.intel.co...        No data 
       less                     444                 444 
10 days                  Saul Wold <sgw@linux.intel.co...        No data 
                       cracklib                 2.8.19 
2.8.19              10 days                  Saul Wold 
<sgw@linux.intel.co...        No data                       sysfsutils 
              2.1.0               2.1.0               10 days 
        Saul Wold <sgw@linux.intel.co...        No data 
       console-tools            0.3.2               0.3.2 
10 days                  Saul Wold <sgw@linux.intel.co...        No data 
                       beecrypt                 4.2.1 
4.2.1               9 days,                  Radu Moisan 
<radu.moisan@inte...        No data                       lame 
            3.99.5              3.99.5              9 days, 
      Radu Moisan <radu.moisan@inte...        No data 
     tslib                    1.0                 1.0                 9 
days,                  Radu Moisan <radu.moisan@inte...        No data 
                      watchdog                 5.11                5.12 
                9 days,                  Radu Moisan 
<radu.moisan@inte...        No data                       tzdata 
            2012c               2012c               9 days, 
      Radu Moisan <radu.moisan@inte...        No data 
     zip                      3.0                 3.0                 9 
days,                  Radu Moisan <radu.moisan@inte...        No data 
                      hdparm                   9.39                9.39 
                9 days,                  Radu Moisan 
<radu.moisan@inte...        No data                       unzip 
            6.0                 6.0                 9 days, 
      Radu Moisan <radu.moisan@inte...        No data 
     squashfs-tools           4.2                 4.2                 9 
days,                  Radu Moisan <radu.moisan@inte...        No data 
                      setserial                2.17                2.17 
                81 days                  Radu Moisan 
<radu.moisan@inte...        No data                       acpid 
            1.0.10              1.0.10              9 days, 
      Radu Moisan <radu.moisan@inte...        No data 
     ltp                      20120401            20120401 
124 day                  Mihai Lindner <mihaix.lindner...        No data 
                       prelink                  1.0+git1+7b47... 
1.0+git1+9552...    184 day                  Mark Hatle 
<mark.hatle@windri...        No data                       x11vnc 
             0.9.13              0.9.13              9 days, 
       Laurentiu Palcu <laurentiu.pa...        No data 
      libical                  0.48                0.48                9 
days,                  Cristian Iorga <cristian.iorg...        No data 
                      libsamplerate0           0.1.8               0.1.8 
               9 days,                  Cristian Iorga <cristian.iorg... 
        No data                       libomxil                 0.9.3 
            0.9.3               9 days,                  Cristian Iorga 
<cristian.iorg...        No data                       flac 
         1.2.1               1.2.1               9 days, 
   Cristian Iorga <cristian.iorg...        No data 
  rpcbind                  0.2.0               0.2.0               9 
days,                  Cristian Iorga <cristian.iorg...        No data 
                      quota                    4.00                4.00 
                9 days,                  Cristian Iorga 
<cristian.iorg...        No data                       libtirpc 
         0.2.2               0.2.2               9 days, 
   Cristian Iorga <cristian.iorg...        No data 
  minicom                  2.6.1               2.6.1               9 
days,                  Cristian Iorga <cristian.iorg...        No data 
                      cwautomacros             20110201 
20110201            9 days,                  Cristian Iorga 
<cristian.iorg...        No data                       eggdbus 
         0.6                 0.6                 9 days, 
   Cristian Iorga <cristian.iorg...        No data 
  wireless-tools           29                  29                  9 
days,                  Cristian Iorga <cristian.iorg...        No data 
                      irda-utils               0.9.18 
0.9.18              9 days,                  Cristian Iorga 
<cristian.iorg...        No data                       mpfr 
         3.1.0               3.1.1               9 days, 
   Bogdan Marinescu <bogdan.a.ma...        No data 
  libpcre                  8.30                8.30                9 
days,                  Bogdan Marinescu <bogdan.a.ma...        No data 
                      oprofile                 0.9.7               0.9.7 
               9 days,                  Bogdan Marinescu <bogdan.a.ma... 
        No data                       tcl                      8.5.11 
            8.5.11              9 days,                  Bogdan 
Marinescu <bogdan.a.ma...        No data                       strace 
                 4.7                 4.7                 9 days, 
           Bogdan Marinescu <bogdan.a.ma...        No data 
          python-scons             2.1.0               N/A 
    41103 d                  Bogdan Marinescu <bogdan.a.ma...        No 
data                       flex                     2.5.35 
2.5.35              9 days,                  Bogdan Marinescu 
<bogdan.a.ma...        No data                       Manual Check Count: 59
Manual Need Check Count: 7
Any problem, please contact Mei Lei <lei.mei@intel.com>

