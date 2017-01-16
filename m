Return-Path: <oliver.graute@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88FBBE00805; Mon, 16 Jan 2017 07:00:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oliver.graute[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.51 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E8F5E0078F
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 07:00:06 -0800 (PST)
Received: by mail-wm0-f51.google.com with SMTP id r126so162446729wmr.0
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 07:00:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:subject:message-id:mail-followup-to:mime-version
	:content-disposition:user-agent;
	bh=lKtyMKDHj2CSIOLwywr/WEHuvTdUAj3rhlyU9A1S/4A=;
	b=eIUYO8pOxcQ1S3T6HSq+DXZZ6WF12aYnOGn4SP0OeQcPTWIu537qZjWY+CZu7JlHFA
	WUWOhKAFtijlNVNvztTHlJ2uQ3Ig34Sm4YuYUOZfL6gD8+9Am7WsVc1zPCy2s8VCcW2P
	whC+Mx0Xx1+moL4fR+qQruVLEA75KpmezHCOpNa8aklLR0UU2hE25L0JQKc3bqhF8Rj9
	v9KdmpbKWLEDimEZYwdsfepOd84FOWPBzJul7NrvZ/0JikSn2FQvaOwXTJi4OqlXkaVk
	GE5hEoRgPs6kq18Ztw3DPdpq3rcibm4oDFE/qSGqfNWPlx2Jwdaf9XxpiDW+1NR9sTVV
	0wSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:mime-version:content-disposition:user-agent;
	bh=lKtyMKDHj2CSIOLwywr/WEHuvTdUAj3rhlyU9A1S/4A=;
	b=Wf8Kj3myhESCQNcNepWlTyUbiYgfkEZX3b5dEVU05aLS8tfBvwB2mIMfBK9BCPeeKr
	v2UcMNzzSOFLfVSlvb4RVK7LOhDD9w9Ugl37eYZ3mfJ4TFPj5rzcURjKVqpCNSYutW/N
	7A6GkV0yXmQ+nRrf5sezMBtfuJfvmWxrN56nKN3au21mQkIexGU9Da2rF3acMUSNf9hZ
	QYGRGrkdOBhpvTux9gg3ppcnBNmfDBKHxhZfVzm5sTqhnh5acqz5mDg33Ktzo9+sft6n
	t6XVB5fqzkXUroMCejwFn/WFOYems8DgOGpfn0FZvtIRDa+tJzLKzjYceFfc/ZJ6qizR
	sH8A==
X-Gm-Message-State: AIkVDXL234nDKNKhqh9TFb5OxFYs0HOBEI487G0oofaJCJFPWJlTkPZnrCvSjmm7NuZe/Q==
X-Received: by 10.28.31.212 with SMTP id f203mr11772727wmf.130.1484578805655; 
	Mon, 16 Jan 2017 07:00:05 -0800 (PST)
Received: from localhost (x4e36436d.dyn.telefonica.de. [78.54.67.109])
	by smtp.gmail.com with ESMTPSA id
	c81sm29233756wmf.22.2017.01.16.07.00.04 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Mon, 16 Jan 2017 07:00:04 -0800 (PST)
Date: Mon, 16 Jan 2017 15:58:46 +0100
From: Oliver Graute <oliver.graute@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20170116145846.GC8894@graute-opti>
Mail-Followup-To: yocto@yoctoproject.org
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: bitbake -c menuconfig linux-fslc in a tmux window
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
X-List-Received-Date: Mon, 16 Jan 2017 15:00:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello list,

if I start the following command in a tmux window it doesn't work.

bitbake -c menuconfig linux-fslc

if I start this command in a extra gnome-terminal a new gnome-terminal
pops-up and I can configure my kernel related stuff.

in the poky /os-poky/meta/lib/oe/terminal.py there is some code that
indicate that it could be possible that a new tmux-pane should open here.

Some clue why bitbake does not open an extra tmux-pane for me?

I'am using yocto jethro 2.0.2.

Best Regards,

Oliver

NOTE: Executing RunQueue Tasks
ERROR: Error executing a python function in /home/graute/5411_IBIS/yocto/os-meta-fsl-arm/recipes-kernel/linux/linux-fslc_4.4.bb:

The stack trace of python calls that resulted in this exception/failure was:
File: 'do_menuconfig', lineno: 25, function: <module>
     0021:            bb.note("Configuration changed, recompile will be forced")
     0022:            bb.build.write_taint('do_compile', d)
     0023:
     0024:
 *** 0025:do_menuconfig(d)
     0026:
File: 'do_menuconfig', lineno: 11, function: do_menuconfig
     0007:        shutil.copy(".config", ".config.orig")
     0008:    except OSError:
     0009:        mtime = 0
     0010:
 *** 0011:    oe_terminal("/bin/bash -c \"make menuconfig; if [ \$? -ne 0 ]; then echo 'Command failed.'; printf 'Press any key to continue... '; read r; fi\"", 'linux-fslc Configuration', d)
     0012:
     0013:    # FIXME this check can be removed when the minimum bitbake version has been bumped
     0014:    if hasattr(bb.build, 'write_taint'):
     0015:        try:
File: 'terminal.bbclass', lineno: 55, function: oe_terminal
     0051:        except oe.terminal.ExecutionError as exc:
     0052:            bb.fatal('Unable to spawn terminal %s: %s' % (terminal, exc))
     0053:
     0054:    try:
 *** 0055:        oe.terminal.spawn_preferred(command, title, None, d)
     0056:    except oe.terminal.NoSupportedTerminals:
     0057:        bb.fatal('No valid terminal found, unable to open devshell')
     0058:    except oe.terminal.ExecutionError as exc:
     0059:        bb.fatal('Unable to spawn terminal %s: %s' % (terminal, exc))
File: '/home/graute/5411_IBIS/yocto/os-poky/meta/lib/oe/terminal.py', lineno: 199, function: spawn_preferred
     0195:def spawn_preferred(sh_cmd, title=None, env=None, d=None):
     0196:    """Spawn the first supported terminal, by priority"""
     0197:    for terminal in prioritized():
     0198:        try:
 *** 0199:            spawn(terminal.name, sh_cmd, title, env, d)
     0200:            break
     0201:        except UnsupportedTerminal:
     0202:            continue
     0203:    else:
File: '/home/graute/5411_IBIS/yocto/os-poky/meta/lib/oe/terminal.py', lineno: 214, function: spawn
     0210:        terminal = Registry.registry[name]
     0211:    except KeyError:
     0212:        raise UnsupportedTerminal(name)
     0213:
 *** 0214:    pipe = terminal(sh_cmd, title, env, d)
     0215:    output = pipe.communicate()[0]
     0216:    if pipe.returncode != 0:
     0217:        raise ExecutionError(sh_cmd, pipe.returncode, output)
     0218:
File: '/home/graute/5411_IBIS/yocto/os-poky/meta/lib/oe/terminal.py', lineno: 133, function: __init__
     0129:
     0130:        if not os.getenv('TMUX'):
     0131:            raise UnsupportedTerminal('tmux is not running')
     0132:
 *** 0133:        if not check_tmux_pane_size('tmux'):
     0134:            raise UnsupportedTerminal('tmux pane too small')
     0135:
     0136:        Terminal.__init__(self, sh_cmd, title, env, d)
     0137:
File: '/home/graute/5411_IBIS/yocto/os-poky/meta/lib/oe/terminal.py', lineno: 225, function: check_tmux_pane_size
     0221:    try:
     0222:        p = sub.Popen('%s list-panes -F "#{?pane_active,#{pane_height},}"' % tmux,
     0223:                shell=True,stdout=sub.PIPE,stderr=sub.PIPE)
     0224:        out, err = p.communicate()
 *** 0225:        size = int(out.strip())
     0226:    except OSError as exc:
     0227:        import errno
     0228:        if exc.errno == errno.ENOENT:
     0229:            return None
Exception: ValueError: invalid literal for int() with base 10: ''

ERROR: Function failed: do_menuconfig
ERROR: Logfile of failure stored in: /home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/work/imx6ulevk-poky-linux-gnueabi/linux-fslc/4.4+gitAUTOINC+4fa9845f9b-r0/temp/log.do_menuconfig.22623
ERROR: Task 4 (/home/graute/5411_IBIS/yocto/os-meta-fsl-arm/recipes-kernel/linux/linux-fslc_4.4.bb, do_menuconfig) failed with exit code '1'


