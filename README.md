# NAC (Nonlinear and Adaptive Control)

## 说明
此仓库存有《非线性与自适应控制》笔记源码。其中内容均非原创，系结合讲义和参考书整理而成。

感谢 胡维康 学长提供其笔记 _Notebook of NAC_ 的源码。感谢 李昱德 学长提供其对于 MIMO 系统鲁棒自适应控制方法的笔记。

使用的模板基于 [ElegantBook](https://github.com/ElegantLaTeX/ElegantBook)。

## 如何编译

### 系统要求

- Windows 系统；
- 安装了 TeX Live 或 MikTeX，不一定需要 xindy 和 latexmk；
- 四款方正字体，具体请参看 [ElegantBook](https://github.com/ElegantLaTeX/ElegantBook) 的说明；
- （可选）zhmakeindex，用于生成索引，可在 [zhmakeindex 发行版页面](https://github.com/leo-liu/zhmakeindex/releases/tag/zhmakeindex-1.2) 下载，内附有使用手册。

### 克隆文件
电脑上需安装有 Git。在命令行中键入

```bash
git clone https://github.com/OliverWu515/NAC
```

注意，所有源文件均以 UTF-8 编码，以更好支持中文。如果打开时出现编码问题，请重新配置编辑器。

### 编译 TeX 源文件
转到克隆的目标文件夹。然后在命令行中键入

```bash
xelatex -synctex=1 -interaction=nonstopmode --shell-escape -file-line-error NAC
zhmakeindex -s zh.ist NAC-NAC.idx
xelatex -synctex=1 -interaction=nonstopmode --shell-escape -file-line-error NAC
xelatex -synctex=1 -interaction=nonstopmode --shell-escape -file-line-error NAC
```
稍作等待，即可看到编译出的 NAC.pdf。

要清理多余的中间文件，请在命令行中键入 

```bash
del *.aux *.bcf *.idx *.ind *.ilg *.run.xml *.toc *.log *.synctex
```

上述步骤可以直接通过在命令行中键入
```bash
compile
```

或双击 compile.bat 来完成。

若未安装 zhmakeindex，则只需执行

```bash
xelatex -synctex=1 -interaction=nonstopmode --shell-escape -file-line-error NAC
xelatex -synctex=1 -interaction=nonstopmode --shell-escape -file-line-error NAC
```

或在命令行中键入

```bash
compile_2
```

或双击 compile_2.bat 来完成。
