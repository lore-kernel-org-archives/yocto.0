Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 200AFE00B3D; Wed,  7 Jun 2017 09:38:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.131 listed in list.dnswl.org]
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0323]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BD60E00B01
	for <yocto@yoctoproject.org>; Wed,  7 Jun 2017 09:37:58 -0700 (PDT)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue005
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0MEaVh-1d3Ubs10sj-00FlVi
	for <yocto@yoctoproject.org>; Wed, 07 Jun 2017 18:37:57 +0200
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Wed, 7 Jun 2017 17:37:56 +0100
Organization: LN Systems Limited
Message-ID: <165f01d2dfac$6b374940$41a5dbc0$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdLfqxxK8ZcWsyrgTRm/HvKl748NXA==
X-Provags-ID: V03:K0:Vff9ftG62WRzF0dDQ+N63CLwZmJbNZ0iLfJ8h8I2FtMASiYdWRN
	I43UCk9fzO4bhRfl5fjUkU23ihTNsjaOGWloh0U8A41gfpH1Gxu2/WQW64zu7lyjGnTp0Ip
	hw2NDOMY9rTYI1lrwZ/4IIclGVn0fGsjh80gpulVhVxbQFCAUWCRwNsQNRqUpr/I7xp5yHI
	VvuFA5kusPlr8+BNZMyCw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:9iCKPWbd+eY=:wF12NyFW2ZGOHpmLcALe3E
	PONFY1LTJ8cIJ3Y0YvDwn8jk3niTV+/oEfd9mBf7EJ7SRqrlVuLdVFAN2vobnATV3DIRyMHMI
	aOiswyEz0nrUj4Q7GfDSIAMDvADrLIfCgNR9niX4xOSlNYg4Nj2hdXj7QBCoZNZkNIUY1nuIt
	x9UGpYzcQdZ+6H014kYYE4ZZ0d5JdqoVpMs4T7Ua77jwkxVa3npsWSSfnHSFTJi/mOgawpaWL
	7AUNX7QdODKCIRopy+WCAw7WTD2Xz+xQIUNyQfWElkq+S9DBy9LGxfjaMSxN6cP8KZ9OjhvNS
	o6i4RPOHLylW+UTrR9yAmaG+0tJ6SQivmtKZm3cdeD58/SvhJE3eKnZQ8ic09DBAtE5tATtcQ
	Hn3f+Z0NJ4nrO2lubVEmL3iCzs/h7sr4imZ8sx/S82Th5G6o5bZ/AMR6+VPWtIUspHtnMR2RA
	xAhOIATiYd50AEy2MA4gTkDhY0po9VcynzVX0JtIqKFcjPKJMrgECW8UozgMUQVj52m/hzsy3
	ZWqGD3NkSnSOphyL+14I1PePatFs75F4XjLKdIdPpchtHQzj9N+wolA1APuuofOp5lQvB4KYI
	3mwAfLffG3ELp0XOnQAkmet06EuvEZnbPgCqzgSQo6QZHr3hhloYuUkvGe6iCJKEae8IZlYQ/
	/ItnhzqU7A2g6o8b0pd+GzFhFPf4RpYlus87X/kWm0fk1ibWWSCvf8jmG/EH9vDiwggz49DnG
	tJFVKJgsnnyfeYha
Subject: Getting linker -l into a bbappend
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 07 Jun 2017 16:38:01 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

I have an autotools (C++) app which builds fine with my default recipe. But
for a particular platform an additional (C) library is needed, so I have a
bbappend.
I can add in the additional compiler flag here, but I'm struggling to
specify the additional library linkage - I think it's because the ordering
on the linker command line is wrong.

If I add '-lfoo' to the base Makefile.am then it builds fine (though
strangely, "-lfoo" isn't anywhere in the linker command line?). 
But I'm trying to put this into just the 'append' rather than altering the
base [non-platform-specific] Makefile.

I've tried 
    EXTRA_OEMAKE += " LDFLAGS+="-lfoo" " 
and
    LDFLAGS+="-lrfctrl"
but these don't seem to construct the correct linkage order (functions from
the library are undefined references)

Is there a way to append this in the right way?
Thanks



