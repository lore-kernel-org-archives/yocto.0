Return-Path: <gera-pesikoff@rambler.ru>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 725C6E00D83; Fri, 10 May 2019 23:13:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [81.19.78.102 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gera-pesikoff[at]rambler.ru)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mxout3.rambler.ru (mxout3.rambler.ru [81.19.78.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BCC2E0043B
	for <yocto@yoctoproject.org>; Fri, 10 May 2019 23:13:24 -0700 (PDT)
Received: from saddam3.rambler.ru (saddam3.rambler.ru [10.32.16.3])
	by mxout3.rambler.ru (Postfix) with ESMTP id 6A95A7C0285
	for <yocto@yoctoproject.org>; Sat, 11 May 2019 09:13:23 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rambler.ru; s=mail;
	t=1557555203; bh=8qW/6zZIIm1cX4VFFIBZI1BMbwP5OF2I4ILR3BNeFMk=;
	h=From:To:Reply-To:Subject:Date;
	b=VioXSUJuKPssHk2nAHwYtQtBwU1cZZ7JPntBJmurvNTl39uc1uviAlITxTwoX6ys+
	+ULrmQ7P4A+IEr0mqzkaVW4UmpuEzh75VLFP/nknPOhPXms5qpE9H9hqJTW21mf9BQ
	INcxoehXU1huTcb4Y78+r8eOZN4SRuEFx7f20kx4=
Received: from localhost.localdomain (localhost [127.0.0.1])
	by saddam3.rambler.ru (Postfix) with ESMTP id 5AD3EC392EF
	for <yocto@yoctoproject.org>; Sat, 11 May 2019 09:13:23 +0300 (MSK)
Received: from [85.173.30.55] by mail.rambler.ru with HTTP;
	Sat, 11 May 2019 09:13:23 +0300
From: "Gera Pesikoff" <gera-pesikoff@rambler.ru>
To: "yocto" <yocto@yoctoproject.org>
Date: Sat, 11 May 2019 09:13:23 +0300
Message-Id: <1557555203.172556.23527.42246@mail.rambler.ru>
MIME-Version: 1.0
X-Mailer: Rambler WebMail, http://mail.rambler.ru/
X-Rambler-User: gera-pesikoff@rambler.ru/85.173.30.55
Subject: I can't make a minimal example for Bitbake version 1.42
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Gera Pesikoff <gera-pesikoff@rambler.ru>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 11 May 2019 06:13:25 -0000
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative; boundary="_----------=_15575552032352776"

--_----------=_15575552032352776
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; format="flowed"

I made a simple bitbake example - hello world. An example is here:
https://github.com/GeraPesikoff/bitbake-hello-world
With the bitbake version 1.40, everything works fine, but with version 1.42=
, the
execution ends with an error:
ERROR: An uncaught exception occurred in
runqueue############################################ | ETA: 0:00:00
Traceback (most recent call last):
File "/home/gera/research/bitbake/bitbake-1.42/lib/bb/runqueue.py", line 15=
13, in
RunQueue.execute_runqueue():
try:
> return self._execute_runqueue()
except bb.runqueue.TaskFailure:
File "/home/gera/research/bitbake/bitbake-1.42/lib/bb/runqueue.py", line 14=
33, in
RunQueue._execute_runqueue():
[43, 967, 4, 3, 1, 5, 3, 7, 13, 1, 2, 1, 1, 246, 35, 1, 38, 1, 35, 2, 338, =
204,
142, 3, 3, 37, 244])
> if self.rqdata.prepare() =3D=3D 0:
self.state =3D runQueueComplete
File "/home/gera/research/bitbake/bitbake-1.42/lib/bb/runqueue.py", line 11=
69, in
RunQueueData.prepare():
todeal.remove(tid)
> self.prepare_task_hash(tid)
File "/home/gera/research/bitbake/bitbake-1.42/lib/bb/runqueue.py", line 11=
82, in
RunQueueData.prepare_task_hash(tid=3D'/home/gera/research/bitbake/bbTutoria=
l/build/../meta-tutorial/recipes-tutorial/first/first_0.1.bb:do_build'):
self.runtaskentries[tid].hash =3D bb.parse.siggen.get_taskhash(taskfn, task=
name,
procdep, self.dataCaches[mc])
> self.runtaskentries[tid].unihash =3D bb.parse.siggen.get_unihash(taskfn +=
 "." +
taskname)
File "/home/gera/research/bitbake/bitbake-1.42/lib/bb/siggen.py", line 45, =
in
SignatureGenerator.get_unihash(task=3D'/home/gera/research/bitbake/bbTutori=
al/build/../meta-tutorial/recipes-tutorial/first/first_0.1.bb.do_build'):
def get_unihash(self, task):
> return self.taskhash[task]
KeyError:
'/home/gera/research/bitbake/bbTutorial/build/../meta-tutorial/recipes-tuto=
rial/first/first_0.1.bb.do_build'
ERROR: Running idle function
Traceback (most recent call last):
File "/home/gera/research/bitbake/bitbake-1.42/lib/bb/runqueue.py", line 15=
13, in
RunQueue.execute_runqueue():
try:
> return self._execute_runqueue()
except bb.runqueue.TaskFailure:
File "/home/gera/research/bitbake/bitbake-1.42/lib/bb/runqueue.py", line 14=
33, in
RunQueue._execute_runqueue():
[43, 967, 4, 3, 1, 5, 3, 7, 13, 1, 2, 1, 1, 246, 35, 1, 38, 1, 35, 2, 338, =
204,
142, 3, 3, 37, 244])
> if self.rqdata.prepare() =3D=3D 0:
self.state =3D runQueueComplete
File "/home/gera/research/bitbake/bitbake-1.42/lib/bb/runqueue.py", line 11=
69, in
RunQueueData.prepare():
todeal.remove(tid)
> self.prepare_task_hash(tid)
File "/home/gera/research/bitbake/bitbake-1.42/lib/bb/runqueue.py", line 11=
82, in
RunQueueData.prepare_task_hash(tid=3D'/home/gera/research/bitbake/bbTutoria=
l/build/../meta-tutorial/recipes-tutorial/first/first_0.1.bb:do_build'):
self.runtaskentries[tid].hash =3D bb.parse.siggen.get_taskhash(taskfn, task=
name,
procdep, self.dataCaches[mc])
> self.runtaskentries[tid].unihash =3D bb.parse.siggen.get_unihash(taskfn +=
 "." +
taskname)
File "/home/gera/research/bitbake/bitbake-1.42/lib/bb/siggen.py", line 45, =
in
SignatureGenerator.get_unihash(task=3D'/home/gera/research/bitbake/bbTutori=
al/build/../meta-tutorial/recipes-tutorial/first/first_0.1.bb.do_build'):
def get_unihash(self, task):
> return self.taskhash[task]
KeyError:
'/home/gera/research/bitbake/bbTutorial/build/../meta-tutorial/recipes-tuto=
rial/first/first_0.1.bb.do_build'
Summary: There were 13 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
--------
Tell me please, what's the problem?

--_----------=_15575552032352776
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<div>I made a simple bitbake example - hello world. An example is here: htt=
ps://github.com/GeraPesikoff/bitbake-hello-world<br>With the bitbake versio=
n 1.40, everything works fine, but with version 1.42, the execution ends wi=
th an error:<br>ERROR: An uncaught exception occurred in runqueue##########=
################################## | ETA: 0:00:00<br>Traceback (most recent=
 call last):<br>File "/home/gera/research/bitbake/bitbake-1.42/lib/bb/runqu=
eue.py", line 1513, in RunQueue.execute_runqueue():<br>try:<br>&gt; return =
self._execute_runqueue()<br>except bb.runqueue.TaskFailure:<br>File "/home/=
gera/research/bitbake/bitbake-1.42/lib/bb/runqueue.py", line 1433, in RunQu=
eue._execute_runqueue():<br>[43, 967, 4, 3, 1, 5, 3, 7, 13, 1, 2, 1, 1, 246=
, 35, 1, 38, 1, 35, 2, 338, 204, 142, 3, 3, 37, 244])<br>&gt; if self.rqdat=
a.prepare() =3D=3D 0:<br>self.state =3D runQueueComplete<br>File "/home/ger=
a/research/bitbake/bitbake-1.42/lib/bb/runqueue.py", line 1169, in RunQueue=
Data.prepare():<br>todeal.remove(tid)<br>&gt; self.prepare_task_hash(tid)<b=
r>File "/home/gera/research/bitbake/bitbake-1.42/lib/bb/runqueue.py", line =
1182, in RunQueueData.prepare_task_hash(tid=3D'/home/gera/research/bitbake/=
bbTutorial/build/../meta-tutorial/recipes-tutorial/first/first_0.1.bb:do_bu=
ild'):<br>self.runtaskentries[tid].hash =3D bb.parse.siggen.get_taskhash(ta=
skfn, taskname, procdep, self.dataCaches[mc])<br>&gt; self.runtaskentries[t=
id].unihash =3D bb.parse.siggen.get_unihash(taskfn + "." + taskname)<br>Fil=
e "/home/gera/research/bitbake/bitbake-1.42/lib/bb/siggen.py", line 45, in =
SignatureGenerator.get_unihash(task=3D'/home/gera/research/bitbake/bbTutori=
al/build/../meta-tutorial/recipes-tutorial/first/first_0.1.bb.do_build'):<b=
r>def get_unihash(self, task):<br>&gt; return self.taskhash[task]<br>KeyErr=
or: '/home/gera/research/bitbake/bbTutorial/build/../meta-tutorial/recipes-=
tutorial/first/first_0.1.bb.do_build'<br>ERROR: Running idle function<br>Tr=
aceback (most recent call last):<br>File "/home/gera/research/bitbake/bitba=
ke-1.42/lib/bb/runqueue.py", line 1513, in RunQueue.execute_runqueue():<br>=
try:<br>&gt; return self._execute_runqueue()<br>except bb.runqueue.TaskFail=
ure:<br>File "/home/gera/research/bitbake/bitbake-1.42/lib/bb/runqueue.py",=
 line 1433, in RunQueue._execute_runqueue():<br>[43, 967, 4, 3, 1, 5, 3, 7,=
 13, 1, 2, 1, 1, 246, 35, 1, 38, 1, 35, 2, 338, 204, 142, 3, 3, 37, 244])<b=
r>&gt; if self.rqdata.prepare() =3D=3D 0:<br>self.state =3D runQueueComplet=
e<br>File "/home/gera/research/bitbake/bitbake-1.42/lib/bb/runqueue.py", li=
ne 1169, in RunQueueData.prepare():<br>todeal.remove(tid)<br>&gt; self.prep=
are_task_hash(tid)<br>File "/home/gera/research/bitbake/bitbake-1.42/lib/bb=
/runqueue.py", line 1182, in RunQueueData.prepare_task_hash(tid=3D'/home/ge=
ra/research/bitbake/bbTutorial/build/../meta-tutorial/recipes-tutorial/firs=
t/first_0.1.bb:do_build'):<br>self.runtaskentries[tid].hash =3D bb.parse.si=
ggen.get_taskhash(taskfn, taskname, procdep, self.dataCaches[mc])<br>&gt; s=
elf.runtaskentries[tid].unihash =3D bb.parse.siggen.get_unihash(taskfn + ".=
" + taskname)<br>File "/home/gera/research/bitbake/bitbake-1.42/lib/bb/sigg=
en.py", line 45, in SignatureGenerator.get_unihash(task=3D'/home/gera/resea=
rch/bitbake/bbTutorial/build/../meta-tutorial/recipes-tutorial/first/first_=
0.1.bb.do_build'):<br>def get_unihash(self, task):<br>&gt; return self.task=
hash[task]<br>KeyError: '/home/gera/research/bitbake/bbTutorial/build/../me=
ta-tutorial/recipes-tutorial/first/first_0.1.bb.do_build'<br>Summary: There=
 were 13 WARNING messages shown.<br>Summary: There were 2 ERROR messages sh=
own, returning a non-zero exit code.<br>--------<br>Tell me please, what's =
the problem?</div>=

--_----------=_15575552032352776--
