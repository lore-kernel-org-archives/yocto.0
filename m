Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab-master.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E332CE01457
	for <yocto@yoctoproject.org>; Sat,  1 Dec 2012 18:20:36 -0800 (PST)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id C9F924299F; Sun,  2 Dec 2012 02:20:36 +0000 (UTC)
Date: Sun, 2 Dec 2012 02:20:36 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20121202022036.GA19672@ab01.i.yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-12-10)
Subject: [Package Report System]Upgrade recipes name list
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
X-List-Received-Date: Sun, 02 Dec 2012 02:20:37 -0000
X-Groupsio-MsgNum: 10773
Content-Type: multipart/mixed; boundary="gKMricLos+KVdGMg"
Content-Disposition: inline

--gKMricLos+KVdGMg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
sysprof                       1.1.8+git1+4692f85f625f4      1.2.0                         Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             1.8+git1+48fa6b5e1d3e636      209.132.183.64                Tom Zanussi <tom.zanussi@intel.com>               
shadow                        4.1.4.3                       4.1.5.1                       Scott Garman <scott.a.garman@intel.com>           
sudo                          1.8.5p2                       1.8.6                         Scott Garman <scott.a.garman@intel.com>           
blktool                       4-6                           4                             Scott Garman <scott.a.garman@intel.com>           
apmd                          3.2.2-14                      3.2.2                         Scott Garman <scott.a.garman@intel.com>           
openssh                       6.0p1                         6.1p1                         Scott Garman <scott.a.garman@intel.com>           
libtasn1                      2.14                          3.2                           Saul Wold <sgw@linux.intel.com>                   
createrepo                    0.4.11                        0.9.9                         Saul Wold <sgw@linux.intel.com>                   Versions after 0.9.* use YUM,...
apt                           0.7.14                        0.9.7.6                       Saul Wold <sgw@linux.intel.com>                   
cmake                         2.8.10.1                      2.8.10.2                      Saul Wold <sgw@linux.intel.com>                   
pkgconfig                     0.25                          0.27.1                        Saul Wold <sgw@linux.intel.com>                   removes glib-conf, adds circu...
dhcp                          4.2.4-P2                      4.2.4                         Saul Wold <sgw@linux.intel.com>                   
build-appliance-image         1.0                           3.2.1                         Saul Wold <sgw@linux.intel.com>                   
mtdev                         1.1.2                         1.1.3                         Ross Burton <ross.burton@intel.com>               
logrotate                     3.8.1                         3.8.3                         Robert Yang <liezhi.yang@windriver.com>           
iputils                       s20101006                     20121126                      Radu Moisan <radu.moisan@intel.com>               
ed                            1.6                           1.7                           Radu Moisan <radu.moisan@intel.com>               
cronie                        1.4.8                         1.4.9                         Radu Moisan <radu.moisan@intel.com>               
apr-util                      1.4.1                         1.5.1                         Radu Moisan <radu.moisan@intel.com>               
liburcu                       0.6.7                         0.7.5                         Radu Moisan <radu.moisan@intel.com>               
curl                          7.26.0                        7.28.1                        Radu Moisan <radu.moisan@intel.com>               
js                            1.7.0+1.8.0rc1                1.60                          Radu Moisan <radu.moisan@intel.com>               
valgrind                      3.7.0                         3.8.1                         Radu Moisan <radu.moisan@intel.com>               
babeltrace                    0.12+git1+0d8f8c2ea27df0      1.0.0                         Radu Moisan <radu.moisan@intel.com>               
systemtap                     1.8+git1+48fa6b5e1d3e636      209.132.183.64                Radu Moisan <radu.moisan@intel.com>               
zlib                          1.2.7                         121                           Radu Moisan <radu.moisan@intel.com>               
mobile-broadband-provider-info1.0.0+gitr1+d9995ef693cb      20090309                      Radu Moisan <radu.moisan@intel.com>               
qt4-x11-free                  4.8.3                         4.8.4                         Paul Eggleton <paul.eggleton@linux.intel.com>     
zypper                        1.5.3-git1+2c5bb6ceb99ec      11.0                          Mark Hatle <mark.hatle@windriver.com>             
libzypp                       0.0-git1+15b6c52260bbc52      11.0                          Mark Hatle <mark.hatle@windriver.com>             
rpm                           5.4.9                         5.4.9.0.20120508              Mark Hatle <mark.hatle@windriver.com>             
fontconfig                    2.10.1                        2.10.2                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xserver-xorg                  1.13.0                        1.13.0.901                    Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.20.12                       2.20.14                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.05                          9.06                          Kai Kang <kai.kang@windriver.com>                 
directfb                      1.6.1                         1.6.2                         Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.1                         0.6.4                         Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.25                        1.0.26.1                      Kai Kang <kai.kang@windriver.com>                 
trace-cmd                     1.2+git1+7055ffd37beeb44      2.0.2                         Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+git1+7055ffd37beeb44      2.0.2                         Darren Hart <dvhart@linux.intel.com>              git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git;protocol=git
net-tools                     1.60-23                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
iptables                      1.4.15                        1.4.16.3                      Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.4                         1.6.8                         Cristian Iorga <cristian.iorga@intel.com>         
bluez-hcidump                 2.4                           2.5                           Cristian Iorga <cristian.iorga@intel.com>         
connman                       1.4                           1.9                           Cristian Iorga <cristian.iorga@intel.com>         
ofono                         1.10                          1.11                          Cristian Iorga <cristian.iorga@intel.com>         
iproute2                      3.5.1                         3.6.0                         Cristian Iorga <cristian.iorga@intel.com>         
wpa-supplicant                1.0                           1.1                           Cristian Iorga <cristian.iorga@intel.com>         
telepathy-mission-control     5.13.0                        5.14.0                        Cristian Iorga <cristian.iorga@intel.com>         
telepathy-idle                0.1.12                        0.1.14                        Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.19.8                        0.20.1                        Cristian Iorga <cristian.iorga@intel.com>         
pulseaudio                    2.1                           2.99.2                        Cristian Iorga <cristian.iorga@intel.com>         
libmusicbrainz                3.0.3                         4.0.0                         Cristian Iorga <cristian.iorga@intel.com>         
gst-plugins-base              0.10.36                       0.11.90                       Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gst-plugins-good              0.10.31                       0.11.90                       Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gst-ffmpeg                    0.10.13                       0.11.2                        Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gst-plugins-bad               0.10.23                       0.11.90                       Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gst-plugins-ugly              0.10.19                       0.11.90                       Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gstreamer                     0.10.36                       0.11.90                       Cristian Iorga <cristian.iorga@intel.com>          not compatible with gst-flue...
gst-fluendo-mp3               0.10.19                       0.10.20                       Cristian Iorga <cristian.iorga@intel.com>         
alsa-utils                    1.0.25                        1.0.26                        Cristian Iorga <cristian.iorga@intel.com>         
alsa-lib                      1.0.25                        1.0.26                        Cristian Iorga <cristian.iorga@intel.com>         
lighttpd                      1.4.31                        1.4.32                        Constantin Musca <constantinx.musca@intel.com>    
xdg-utils                     1.0.2                         1.1.0                         Constantin Musca <constantinx.musca@intel.com>    only release candidates avail...
ethtool                       3.5                           3.6                           Constantin Musca <constantinx.musca@intel.com>    
pixman                        0.27.2                        0.28.0                        Constantin Musca <constantinx.musca@intel.com>    
libxcb                        1.8.1                         1.9                           Constantin Musca <constantinx.musca@intel.com>    
liberation-fonts              1.04                          2.00.1                        Constantin Musca <constantinx.musca@intel.com>    2.00.0 - fontforge package re...
libxslt                       1.1.27                        1.1.28                        Constantin Musca <constantinx.musca@intel.com>    
qemu                          1.2.0                         1.3.0                         Constantin Musca <constantinx.musca@intel.com>    
matchbox-panel-2              0.0+git1+cdf7a22716b8746      2.0                           Constantin Musca <constantinx.musca@intel.com>    
puzzles                       r9660                         9712                          Constantin Musca <constantinx.musca@intel.com>    
lttng-viewer                  0.12.38                       0.12.38.21032011              Constantin Musca <constantinx.musca@intel.com>    
byacc                         20120526                      20121003                      Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
libconvert-asn1-perl          0.22                          0.26                          Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
bdwgc                         20110107                      7.2alpha5                     Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
patch                         2.6.1                         2.7.1                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
tcf-agent                     0.4.0+git1+4ef94ecb927a8      8.0                           Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
guile                         2.0.6                         2.0.7                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
bison                         2.5.1                         2.6.5                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
binutils                      2.22                          2.23.1                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
gdb                           7.5                           7.5.1                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
nasm                          2.10.01                       2.10.05                       Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
lttng-modules                 2.0.5                         2.1.0                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
lttng2-ust                    2.0.5                         2.1.0                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
linux-libc-headers-yocto      3.4+git-1+a1cdb60720c452      3.4.9                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
linux-libc-headers            3.4.3                         3.6.8                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
lttng-control                 0.89                          0.89.05122011                 Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
Upgradable Count: 78
Upgrade Total Count: 89
The based commit merge time is:
Fri Nov 30 14:28:26 2012 -0800
The based commit is:
commit 932f39e8b83a70067464a9b64a9dc379d7a3f168
Author: Jason Wessel <jason.wessel@windriver.com>
Date:   Fri Nov 30 13:34:08 2012 -0600
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--gKMricLos+KVdGMg
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAyAAAAJYCAYAAACadoJwAAAABHNCSVQICAgIfAhkiAAAAAlwSFlz
AAAPYQAAD2EBqD+naQAAIABJREFUeJzs3XtcVVX+//H3BuSiiVwUdRwNTbyjAepXKxW8hWPOGOoU
ZY1UOg3KhNOYlxTCW34n/aZpdtGvqZlOY6NWNuEVsmwsL5XoNzMNNScviZfE8ILu3x/G+Xk8B8WS
dTj6ej4ePJK11t77s/YhPW/2Xmdbtm3bAgAAAAADfDxdAAAAAICbBwEEAAAAgDEEEAAAAADGEEAA
AAAAGEMAAQAAAGAMAQQAAACAMQQQAAAAAMYQQAAAAAAYQwABAAAAYAwBBAAAAIAxBBAAAAAAxhBA
AAAAABhDAAEAAABgDAEEAAAAgDEEEACKj4+Xj0/Z/jrYs2ePfHx8lJKSUs5VQZJyc3Pl4+OjrKws
T5cCAMB1QQABrrPNmzfLx8dH7dq1c9u/aNEi+fj4yMfHR/v373fpP3XqlPz9/VW1alWdP3++vMt1
sCyrXMeX1TPPPHPVN9xz58696UJQeZ1vSYqMjHT8TPr4+MjX11chISFq3769pk2bpuLi4nI7tkmE
OQCoGPw8XQBwo4mNjVVoaKi2bNmikydPqmrVqk79a9ascbyZXLt2rR5++GGn/g8//FDFxcXq1q2b
fH19jdVd0ZTlDXd5vim/GaWnpyskJES2bes///mP/vnPf2ro0KFavXq13n33XU+Xd93wcwMAnsUV
EOA6syxL8fHxKi4u1gcffODSv3btWnXp0kXVqlXT2rVr3fZLUpcuXcq9VqCEZVlKT09XRkaGMjMz
9eqrr+qzzz5TcHCw3nvvPbc/y97Ktm1PlwAANzUCCFAOSsLD5QFjz5492rNnj7p166aOHTuWOYAU
Fxdr5syZateunYKDg1WlShXFxsbqxRdfLPXN1CeffKK+ffuqVq1aCggIUL169fT444/rwIEDZZ7H
2rVrVa1aNdWpU0dbt24tdVxycrJ8fHy0bt06t/1vvfWWfHx89Oc//7nMx/45StaynD59WiNHjlT9
+vUVGBiohg0bauzYsTp37pzb7d544w3FxsaqcuXKqlmzph566CHt27fP7dqYS2/j+fDDD5WYmKjQ
0FD5+Pho3759kqTVq1fr4YcfVlRUlIKCglS5cmW1aNFCzzzzjE6fPu22hkOHDunRRx9VzZo1Vbly
ZcXExOh///d/rzjfo0ePauTIkWratKkqV66skJAQde3aVatWrfoZZ89VvXr11LlzZ0nSpk2bXPp3
7NihAQMGqG7dugoICFCtWrX04IMPaufOnS5jBwwYIB8fH33zzTf629/+piZNmigoKEh169bVX/7y
F508edJtDZs2bVJSUpIiIiIUGBioyMhIpaamuv05vvQYzz33nKKjo1W5cmUlJCQoJSXFMZesrCyn
W85K+7kFAJQPbsECykHJG53LA8aaNWskSQkJCfL399c777yjr7/+WlFRUZKkY8eO6bPPPlP16tXV
qlUrSdK5c+fUq1cvrVy5Uq1atdLAgQPl7++vNWvWKC0tTRs2bNDrr7/udJw5c+Zo0KBBqlatmnr3
7q1f/epX2r17t+bOnat3331XGzZsUN26da84hzfeeEOPPPKIGjZsqOzs7CuOT01N1ZtvvqlXX31V
HTt2dOl/5ZVXZFmWHn/88aucuesjKSlJX3zxhfr166dKlSpp2bJleuaZZ7Rp0ya98847TmP/9re/
acSIEQoLC9OAAQNUrVo1rVy5Uh06dFBISEipt+usW7dOzz77rLp3764hQ4bowIED8vf3lyRNmTJF
e/bsUadOnVS7dm2dOXNG69at09ixY5WTk6O1a9c63V535MgR3XHHHcrPz1eHDh1011136bvvvlNa
Wpri4+PdHn/v3r2Kj4/Xvn371K1bNyUlJamwsFBvv/22EhMT9corr+ixxx77xeeyJOBefh6ys7OV
lJQkX19f/fa3v1WDBg303XffafHixXrvvfeUk5OjmJgYl/0NGTJEGzZs0H333aeQkBBlZ2dr6tSp
+vDDD/XRRx8pICDAMfbtt99Wv3795Ovrq759+6pevXrauHGjXn75Zb399tv66KOPVL9+fZdjpKam
atOmTerbt69+97vfycfHR3FxcZKkefPmKT4+3um83nrrrb/4PAEAroENoFzUrl3b9vX1tb///ntH
2wMPPGCHhITYFy5csD///HPbsiz75ZdfdvQvWbLEtizL/v3vf+9oy8zMtC3Lsp9++mmXY6SlpdmW
ZdnLli1ztH311Vd2pUqV7FatWtlHjhxxGv/xxx/bAQEBdu/evZ3aO3XqZPv4+Di+nzRpku3j42N3
7NjRPnbsmNPY/Px827IsOyUlxak9OjraDgwMtAsKCpzad+3aZVuWZd91112lnqtLlcw3Kyur1DGv
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
42Nr1qypESNG6NSpU063ev2S47ubz4EDB7Rz505FRkY6QmHJa+Puo6qli+fSsiyn2wivpuSTx2ye
AwIAHkUAAcpRyRWO559/XsePH3es/yhR8tDCDz74wPGE9EsDiK+vr9LS0nTgwAGlp6fr/PnzLsc4
duyYvvrqK8f3Q4YMUaVKlTR06FB9++23LuMvXLigTz75pNSamzZtqnXr1ikiIkJ9+/bVW2+9dU1z
Tk1N1ZkzZxxrPq518XnHjh1Vv359ffbZZy4L2iU5nspdrVo13XvvvW73MWbMGKerF6dPn9aTTz4p
SUpJSXG0P/DAA/Lz89OUKVO0f/9+R7tt23ryySeveBtYaWrXri3J9Y3zgQMH9Ne//tVlvJ+fn/r3
769jx45pzJgxTn2bNm1yWphdIi4uTh06dNCSJUu0cOFCt3Xs2rXLcaXolxgyZIhq1qypuXPnateu
XZIunsOQkBBlZWUpLy/P7XYlIfFyzz33nNPC8QsXLig9PV0XLlxwem169+6tsLAwzZs3T59++qnT
PqZOnaqvvvpKXbt2LXXBvzslt21dugYHAGAea0CAclQSQErepF0eQEraFi9erJMnT6pp06aqVauW
U/+YMWP0xRdfaObMmXr//ffVvXt3Va9eXSdOnNC2bdv08ccfa+zYsXrqqackSY0bN9acOXP0yCOP
qEmTJurZs6caNmyo8+fPKz8/X+vWrVNYWJjLJxRd+lvhhg0bat26dercubOSk5N19uxZPfDAA2Wa
c58+fRQREaEDBw4oIiJCSUlJZT9huriuY8GCBUpMTFRKSormzp2rNm3ayNfXV1u3blV2drb8/f31
2muvqWrVqm730aRJEzVv3lx9+/aVn5+f3n77bX3zzTe655571L9/f8e4Bg0aaOzYsRo1apRatWql
++67T8HBwVq1apWOHDmi6Ohobd++/Zrq79OnjzIyMjRp0iTl5eWpVatWOnjwoP75z3+qa9euTrfL
lZg4caLWrFmjyZMna8OGDbrzzjt14MAB/eMf/1BiYqLbK1ELFy5U586d1b9/f73wwgu64447VLly
ZR0+fFibNm3S559/rg0bNqh69eplqru0qwJBQUEaMWKEhg4dqoyMDC1cuFBhYWF66623dO+99you
Lk533323mjdvLsuy9O233+qjjz7S4cOH9eOPP7rs74477tDtt9/uONcrVqzQ1q1b1bp1a8fPsHTx
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
8+fPS5IaN26s3NxcDR8+XH379pWfn5+6dOmiyZMnO9aIlBg1apSqVq2qF198UZMnT1bt2rU1cuRI
x6dqAQAAADermz6A5OTklHlsbGysVq1aVaaxaWlpSktL+7llAQAAADck1oAAAAAAMIYAAgAAAMAY
AggAAAAAYwggAAAAAIwhgAAAAAAwhgACAAAAwBgCCAAAAABjCCAAAAAAjCGAAAAAADCGAAIAAADA
GAIIAAAAAGMIIAAAAACMIYAAAAAAMIYAAgAAAMAYAggAAAAAYwggAAAAAIwhgAAAAAAwhgACAAAA
wBgCCAAAAABjCCAAAAAAjCGAAAAAADCGAAIAAADAGAIIAAAAAGMIIAAAAACMIYAAAAAAMIYAAgAA
AMAYAggAAAAAYwggAAAAAIwhgAAAAAAwhgACAAAAwBgCCAAAAABjCCAAAAAAjCGAAAAAADCGAAIA
AADAGAIIAAAAAGMIIAAAAACMIYAAAAAAMIYAAgAAAMAYAggAAAAAYwggAAAAAIwhgAAAAAAwhgAC
AAAAwBgCCAAAAABjCCAAAAAAjCGAAAAAADCGAAIAAADAGAIIAAAAAGMIIAAAAACMIYAAAAAAMIYA
AgAAAMAYAggAAAAAYwggAAAAAIwhgAAAAAAwhgACAAAAwBgCCAAAAABjCCAAAAAAjCGAAAAAADCG
AAIAAADAGAIIAAAAAGMIIAAAAACMIYAAAAAAMIYAAgAAAMAYAggAAAAAYwggAAAAAIwhgAAAAAAw
hgACAAAAwBgCCAAAAABjCCAAAAAAjCGAAAAAADCGAAIAAADAGAIIAAAAAGMIIAAAAACMIYAAAAAA
MIYAAgAAAMAYAggAAAAAYwggAAAAAIwhgAAAAAAwhgACAAAAwBgCCAAAAABjCCAAAAAAjCGAAAAA
ADCGAAIAAADAGAIIAAAAAGMIIJIKCwv11FNPqXv37qpRo4Z8fHyUlZXlMm7AgAHy8fFx+WrWrJnL
2HPnzikrK0uRkZEKDAxU06ZNNWPGDBPTAQAAACosP08XUBEcOXJEs2bN0u233657771Xs2fPlmVZ
bscGBQUpJyfHpe1yqampWrBggcaPH682bdooOztbTzzxhE6ePKmRI0eWyzwAAACAio4AIikyMlLH
jh2TJBUUFGj27NmljvX19VXbtm2vuL/t27drzpw5mjhxop588klJUseOHVVQUKDx48fr8ccfV2ho
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
7NiHrm+e0vDo0aNiMBjkq6++slhuS3pt12u3CNsLL7cVdnNbeVx67RbRdzsRkYgIj4A8pgsXLmD8
+PG4fPkyPvnkEzRo0AArVqzA7t27AQBGo7HIc+TO2W07d+5E2bJl0aJFCwCAoij466+/cPr06Qc+
l+367WY7t5fS0K3ndr12672diEil1chHj6KiomTlypUiIrJhwwbx9vaWV199VX38QXuTevXqJRER
EXLr1i3JycmRlStXSnBwsLRr184m3SL6bddrtwjbub2U/G4R/bbrtVtE3+1ERCKcBeux3L59+77L
e/bsKb6+vvL111+LSNGbOhmNRrl27ZpUqVJFBg4cKElJSdKuXTtRFEXeeecdq3eL6Lddr90ibOf2
UvK7RfTbrtduEX23ExEVxgHIPRYtWiRt2rSRHj16yL/+9S9JTU1VHzOZTGI0GtUPgV9++UUCAgIk
MjJSMjIyROTuG795D9Qvv/wi5cqVk+rVq4uTk5O0bdtWUlJS2F4CutnO7aU0dOu5Xa/dem8nInoU
DkDuyMjIkJdfflnKly8vgwcPlu7du4uTk5PUrVtXvvvuOxGx3KtkflMfPXq0eHh4yIcffnjf37tw
4UJRFEXCw8Nly5YtbC8B3Wzn9lIauvXcrtduvbcTET0uDkDuiI+Pl8qVK8u6devUN/dt27ZJnTp1
xM/PT65cuWKxvnmdy5cvS1hYmNStW1dOnTolIiJpaWnqXWZv3rypnqvL9pLRzXZuL6WhW8/teu3W
ezsR0eNymDRp0iStL4S3B59++imOHDmC+fPnq/OmBwUFwcfHB99++y1OnDiBV155Rb3Jk8FgQH5+
Ptzd3eHo6IhvvvkGWVlZcHJywpAhQ3D9+nU0btwYbm5uCAsLY3sJ6mY7t5fS0K3ndr12672diOix
aTXysRfmc2kHDBggVatWlYsXL4rI3Yv9MjMzZdy4caIoiuzcuVNEil7gd/PmTWnatKkoiiKKokjj
xo3l7NmzbC9h3Wzn9lIauvXcrtduvbcTET2pUjUAOX78uCxZskR++OEHOX/+vMVUhVOnTpUyZcrI
xo0b1WXmx/fv3y/VqlWTtm3bWvw+k8kkx48fl+nTp4uzs7PUqlXL4vls128327m9lIZuPbfrtVvv
7URExaFUDEBu3rwpr732mri7u0tISIgoiiIhISHyv//9T13n4sWLUq5cORk6dKhcv35dRO7uXbp9
+7YMHjxYfH195ddff1Wfk5WVJW+99Za4uLjIBx98wPYS0M12bi+loVvP7Xrt1ns7EVFxKvEDkD17
9kh4eLg0btxYNm7cKMePH5fExESpV6+eVK5cWb1YLy8vT4YOHSpeXl4SHx+vPt98+DsuLk5cXFzk
wIEDInJ3j9TOnTslKyuL7SWgm+3cXkpDt57b9dqt93YiouJWogcg169fl7fffluaNGkie/bssXhs
3rx54ujoKHFxceqy33//XSpXriydO3eWo0ePikjBDZxERH766SdRFEUSExNF5MF3mi3t7XrtZju3
l9LQred2vXbrvZ2IyBpK9ABERGTUqFHy448/qj+bD2X//vvvoiiKfP/99xbrL1u2TBRFkT59+khm
ZqaIiNy4cUP69esnbdu2lby8PLaX0G62c3spDd16btdrt97biYiKW4kfgOTm5qr/XnhP0erVq8XF
xUV27dpV5PFx48ZJ+fLlxdfXV6KioqRVq1bi6elpsYfKFvTartduEbZzeyn53SL6bddrt4i+24mI
iptB62mArc3FxUX9d0VRYDKZAADHjh2Dj48PQkJC1MfNj8XGxiI+Ph6vvPIKFEVBzZo1ceLECfTu
3ZvtJbib7dxeSkO3ntv12q33diKi4qaIiGgdYUv5+flwdHRE27ZtAQBbtmyByWRSb/gEAEajEQ4O
DgCAvLw8ODk5adJ6L72267UbYLsW2G17em3Xazeg73YioqdV4o+A3MvR0RGXLl3C4cOH0bFjRwAF
e6NycnJw4MAB9Wcze3rD12u7XrsBtmuB3ban13a9dgP6bicielqlbgACAIcOHUJubi6aNm0KAEhM
TET37t3RtGlTnDt3zmIPlL3Ra7teuwG2a4HdtqfXdr12A/puJyJ6GqXq3c1oNAIAdu7cCU9PT7i7
u2P48OGIiIiAyWTCiRMnEBQUpG3kA+i1Xa/dANu1wG7b02u7XrsBfbcTERWH/wdW7eLSeRDpgQAA
AABJRU5ErkJggg==

--gKMricLos+KVdGMg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--gKMricLos+KVdGMg--
