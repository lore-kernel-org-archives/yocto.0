Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab-master.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93649E013DA
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2013 03:00:24 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 8A030408A8; Mon, 19 Aug 2013 10:00:24 +0000 (UTC)
Date: Mon, 19 Aug 2013 10:00:24 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20130819100024.GA21338@ab01.i.yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-12-10)
Subject: [Package Report System]Upgrade recipes name list
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
X-List-Received-Date: Mon, 19 Aug 2013 10:00:24 -0000
X-Groupsio-MsgNum: 15522
Content-Type: multipart/mixed; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline

--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
Upgradable Count: 0
Upgrade Total Count: 0
The based commit merge time is:
Fri Aug 16 11:44:18 2013 +0100
The based commit is:
commit 2a48e9007cc92fedfdb6919411859fb943eacc94
Author: Khem Raj <raj.khem@gmail.com>
Date:   Thu Aug 15 06:56:49 2013 -0700
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--a8Wt8u1KmwUX3Y2C
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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
hw8fpj/lRG/L35Fyc3Pj4uIeP37MjGzdupXNZjs5OW3ZsqXNPzVCPePvSHK5nPk2iLz4fnDKlCnO
zs6jR48uLS19G8tDhOhG8vDwcHNzY+7W19dbWlrSty0tLYVCYU8vDb3Q7h9HtrS0MN+qmZiYVFRU
lJaW0ucTh8Px8fHpoQWiDiIZGxvTf29GCGlsbLSwsHBwcHBwcCCE0H8zhXpMu5fgXC5XIpHQ3yvn
5eV1+s08enPaPZPYbPb48eOjo6NNTEzMzMxGjRrVk8tCujr5qkKhUIjF4oEDB+r+XcqZM2fwK8Ge
1Mn/qmCz2cw1Hnpb8GMhADASABgJAIwEAEYCACMBgJEAwEgAYCQAMBIAGAkAjAQARgIAIwGAkQDA
SABgJAAwEgAYCQCMBABGAgAjAYCRAMBIAGAkADASABgJAIwEAEYCACMBgJEAwEgAYCQAMBIAGAkA
jAQARgIAIwGAkQDASABgJAAwEgAYCQCMBABGAgAjAYCRAMBIAGAkADASABgJAIwEAEYCACMBgJEA
wEgAYCQAMBIAGAkAjAQARgIAIwGAkQDASABgJAAwEgAYCQCMBABGAgAjAYCRAMBIAGAkADASABgJ
AIwEAEYCACMBgJEAwEgAYCQAMBIAGAkAjAQARgIAIwGAkQDASABgJAAwEgAYCQCMBABGAgAjAYCR
AMBIAGAkADASABgJAIwEAEYCACMBgJEAwEgAYCQAMBIAGAkAjAQARgIAIwGAkQDASABgJAAwEgAY
CQCMBABGAgAjAYCRAMBIAGAkADASABgJAIwEAEYCACMBgJEAwEgAYCQAMBIAGAkAjAQARgIAIwGA
kQDASABgJAAwEgAYCQCMBABGAgAjAYCRAMBIAGAkADASABgJAIwEAEYCACMBgJEAwEgAYCQAMBIA
GAkAjAQARgIAIwGAkQDASABgJAAwEgAYCQCMBABGAgAjAYCRAMBIAGAkADASABgJAIwEAEYCACMB
gJEAwEgAYCQAMBIAGAkAjAQARgIAIwGAkQDASABgJAAwEgAYCQCMBABGAgAjAYCRAMBIAGAkADAS
ABgJAIwEAEYCACMBgJEAwEgAYCQAMBIAGAkAjAQARgIAIwGAkQDASABgJAAwEgAYCQCMBABGAgAj
AYCRAMBIAGAkADASABgJAIwEAEYCACMBgJEAwEgAYCQAMBIAGAkAjAQARgIAIwGAkQDASABgJAAw
EgAYCQCMBABGAgAjAYCRAMBIALA6+FlTU9PZs2f19fX9/f1NTEx6bE2olXbPJJVKFRUVZWVlZW1t
HRUVRVFUTy4L6Wr3TCosLBwwYIC3tzchJDc399GjR3Z2dj23LqSj3TNJJBJZWlrSt62srIRCYU8t
CbXW7pmkUCgMDQ3p2yYmJg0NDaWlpaWlpYSQ+vr6M2fOvPo+6uvrzczMXnOh/9OTU+24evXqnj17
6NspKSnp6entbdmp06dPd/mxODlFUe2+3I0cObKmpkapVBJC8vPzra2tu+sZhP5b7b7c9evXj8fj
RUdHs1gsZ2fn//znP13eh4ODQ5cfi5MTQvSoDq+tZTKZTCYzNzfvjlWhLuokUvfKzc29fv06h8Px
8fGxt7enBxUKxbFjxz7++ONun7ykpOTatWt9+vQRCAQ2NjbdO3lxcfEff/zRq1cvPp/v6OjYvZPT
MjMzZTKZj49Pz30sVFFRcfHixYCAACcnp59++kmtVhNC7t27t2fPnsrKym6fvKGh4eDBgy4uLn5+
frGxsTk5Od04uVgsPnr0qK+vr5eX165duxoaGrpxcnq8rq7ut99+o2fueqQDBw6IRCJCSHJyclpa
GiGkpKTk9OnTu3fvlkqlhJD4+PibN28SQvLy8lJTU+vr6ydPnmxra+vq6srhcJqamgghzc3NbT7H
X3/yx48fu7i4jBkzxtLS0tPT8/Hjx904+dOnTydMmMDlcocNG2ZjY1NfX9+9/ywajebw4cPu7u70
nF2PxOFwiouLKYrKzc3NysoihOTn55uamrLZbKFQqFKp8vPz79y5Qwi5d+/eu+++O3bsWCcnp3v3
7u3evdve3p7+FcHDw2Ps2LFvYnJnZ+fp06fTz4OCgoJhw4Z14+TDhw93d3cvLi7ev3+/gYGBra1t
9/6znDx50tXV1cLC4nUjOTo6lpSUVFVVvffeewqFoqWlRSgUOjo60uMVFRU8Hk8kEmk0mvLy8uHD
h9OPeuedd/r27auvr6/Vantg8tzc3KioKC8vL91I3TW5vr5+37592Wy27rG8/uTFxcUikYjP5zNz
9g4PD+9apH79+p04ccLIyMjS0rJ3797Nzc2PHj2aMGGCqanpqVOnDAwM7OzsmpublUqlSCTy8vKq
rKxks9lWVlYjR47MzMxUqVT0C51UKs3Ly/P09Oz2yY8fP15QULBo0aJWF7uvPzmLxSKEWFpajhgx
4sGDB1VVVcwuXn/y27dvNzU15eTklJSUVFdXy2Syrp9JLBZr0KBB165dc3Bw4HK5586doy9yOByO
kZFRVlYWM+7k5EQIyczMTE9PJ4TI5XKJRGJsbPxGJ6+srHzy5MmyZcv69evX7ZMXFhampqYSQlQq
lVgs1v0e5/UnDwkJCQ0NDQkJcXFxGTFihEAg6Oj7pE45OTlVV1f379+fzWbX19czV6KOjo7Z2dmG
hoZDhw5NSEigxydOnBgTE1NWVlZRUcHlcpkz/Q1Nfv78eaFQuHLlSvpRPj4+06ZN667JuVzuli1b
YmNja2pqLCwsWr2tvubkvXr9deYYGhq2tLQYGRn16O9JhJC6ujpDQ0Pmo1vQk4vFYhaL1fFLQpcn
19XTkVAX4N84AICRAMBIAGAkAP4P4EQmcd4s5SYAAAAASUVORK5CYII=

--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--a8Wt8u1KmwUX3Y2C--
