Return-Path: <rcagley@toyon.com>
Received: from mx.toyon.corp (206-190-77-154.static.twtelecom.net
	[206.190.77.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48871E0027C
	for <yocto@yoctoproject.org>; Mon,  6 May 2013 13:25:55 -0700 (PDT)
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Mon, 6 May 2013 13:24:58 -0700
Message-ID: <BA6FC03EA0815D428FB8A3C279ED49920740DB1D@mx.toyon.corp>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Hob found an error
Thread-Index: Ac5Kl6AUzQI4iTYkRyO4TTWPUPTkGA==
From: "Richard Cagley" <rcagley@toyon.com>
To: <yocto@yoctoproject.org>
Subject: Hob found an error
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
X-List-Received-Date: Mon, 06 May 2013 20:25:55 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

When I try to add the videotestsrc plugin during package editing and the
try to build the image I get this message in a popup window. No clue
even where to start in debugging this.

Hob Exception - Error running command '['matchFile', 'hob-image.bb']':
Traceback (most recent call last):
  File "/opt/fsl-community-bsp/sources/poky/bitbake/lib/bb/command.py",
line 68, in runCommand
    result =3D command_method(self, commandline)
  File "/opt/fsl-community-bsp/sources/poky/bitbake/lib/bb/command.py",
line 210, in matchFile
    return command.cooker.matchFile(fMatch)
  File "/opt/fsl-community-bsp/sources/poky/bitbake/lib/bb/cooker.py",
line 1142, in matchFile
    raise NoSpecificMatch
NoSpecificMatch




