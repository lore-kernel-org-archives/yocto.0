Return-Path: <stefan.roese@gmail.com>
Received: from mo-p05-ob.rzone.de (mo-p05-ob.rzone.de [81.169.146.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 097ECE0077E
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2013 08:02:25 -0800 (PST)
X-RZG-AUTH: :IW0NeWC7b/q2i6W/qstXb1SBUuFnrGoheedClaTaNdBkW0QEactrHijJzVWB2B/o4fkZ
X-RZG-CLASS-ID: mo05
Received: from [10.0.0.152] (pD9FF8293.dip0.t-ipconnect.de [217.255.130.147])
	by smtp.strato.de (RZmta 32.17 DYNA|AUTH)
	with ESMTPA id R04cf2pB5G2MdNB for <yocto@yoctoproject.org>;
	Thu, 5 Dec 2013 17:02:22 +0100 (CET)
Message-ID: <52A0A38E.7020903@gmail.com>
Date: Thu, 05 Dec 2013 17:02:22 +0100
From: Stefan Roese <stefan.roese@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Board specific bbappend file
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
X-List-Received-Date: Thu, 05 Dec 2013 16:02:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Dear List!

I'm trying to add a board specific *.bbappend file to a recipe. To add
board specific informations/settings to this recipe but without changing
the common (generic) recipe (*.bb) file. Something like this:

recipe:
linux-xyz_3.12.bb

board-specific append file:
linux-xyz-board-foo_3.12.bbappend

From the documentation I read:
"
Append files must have the same root names as their corresponding
recipes. For example, the append file someapp_1.5.1.bbappend must apply
to someapp_1.5.1.bb.
"

So it seems impossible to "encrypt" the board name into the bbappend
file name. Or am I missing something?

If not, is there another way to add such board-specific stuff to a
recipe without changing the generic recipe?

Thanks,
Stefan

