Return-Path: <gandersson@genivi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB2BCE00C2A; Mon, 10 Jul 2017 04:40:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [38.101.164.234 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp1.genivi.org (smtp1.genivi.org [38.101.164.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D69BE00BE9
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 04:40:18 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.genivi.org (Postfix) with ESMTP id 0B3641041C7;
	Mon, 10 Jul 2017 04:40:17 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at smtp1.genivi.org
Received: from smtp1.genivi.org ([127.0.0.1])
	by localhost (smtp1.genivi.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tG7-Z2z-8yHS; Mon, 10 Jul 2017 04:40:15 -0700 (PDT)
Received: from linuxlap.zyxel.com (c83-248-212-222.bredband.comhem.se
	[83.248.212.222])
	by smtp1.genivi.org (Postfix) with ESMTPSA id AE375103F36;
	Mon, 10 Jul 2017 04:40:14 -0700 (PDT)
Message-ID: <1499686806.23010.9.camel@genivi.org>
From: Gunnar Andersson <gandersson@genivi.org>
To: yocto@yoctoproject.org
Organization: GENIVI Alliance
Date: Mon, 10 Jul 2017 13:40:06 +0200
Mime-Version: 1.0
X-Mailer: Evolution 3.22.1 (3.22.1-2.fc25) 
Subject: Questions on HOSTTOOLS and the documented host packages in the manual
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
X-List-Received-Date: Mon, 10 Jul 2017 11:40:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit


Hi everyone

To get repeatable quality builds we ensure the build agents in CI are
identical and that they install a _minimal_ list of packages taken from the
instructions in the Yocto manual [1].  But from time to time some dependency
is missing, especially since things change in Yocto over time (e.g.
gzipnative class, and such).   So we were even missing gzip in one build
failure.  Now I couldn't confirm that the gzip binary is indeed missing - it
seems to be on our standard image, but possibly the configure step was
looking for some -devel package, headers or whatnot.

Still we have had our share of "works on my machine" answers from users that
don't use a controlled, docker-container like that of the CI build agents.

Sidestepping, since I anticipate this in your response:  I know there's
continuous work on repeatability, and tried to read what I can in the manual
on the new HOSTTOOL variable.  The mechanics of $PATH and softlinking the
binaries are clear, but I think I missed the intended usage and process
around it.   First, is it expected/recommended that each layer modifies this
variable?  If so, would layers add new host dependencies, or is the
intention to have layers further limit this with its own whitelist but still
based on a predefined set coming from the Poky layer?

I get that technically speaking you build in a lot of freedom, but from a
process perspective I think if the Yocto project defines a minimal set of
required host tools, then a Yocto-based project (like GDP) could take the
stance that all other dependencies must come from DEPENDS declaration on a
-native package.   Unless there is a clear agreed baseline, it's difficult
to file a bug on a recipe with respect to their -native dependencies.

Please confirm, is the manual (I refer to the Mega Manual [1]) intended to
be such a canonical list of host dependencies?

But if so:  Is it intentional or a bug that gzip (and bzip2, perhaps others)
is listed to be installed for Fedora, but not listed to be installed for
Ubuntu/Debian, see [1]?   Maybe the idea was that some things are always
there by default on those distros, but that seems brittle.  Shouldn't every
package be listed very explicitly?

Appreciate your comments...

- Gunnar

[1] http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#packages




